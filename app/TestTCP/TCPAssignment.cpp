/*
 * E_TCPAssignment.cpp
 *
 *  Created on: 2014. 11. 20.
 *      Author: Keunhong Lee
 */


#include <E/E_Common.hpp>
#include <E/Networking/E_Host.hpp>
#include <E/Networking/E_Networking.hpp>
#include <cerrno>
#include <E/Networking/E_Packet.hpp>
#include <E/Networking/E_NetworkUtil.hpp>
#include "TCPAssignment.hpp"

namespace E
{

TCPAssignment::TCPAssignment(Host* host) : HostModule("TCP", host),
		NetworkModule(this->getHostModuleName(), host->getNetworkSystem()),
		SystemCallInterface(AF_INET, IPPROTO_TCP, host),
		NetworkLog(host->getNetworkSystem()),
		TimerModule(host->getSystem())
{

}

TCPAssignment::~TCPAssignment()
{

}

void TCPAssignment::initialize()
{
	current_port_number = 32688;
}

void TCPAssignment::finalize()
{

}

Socket::Socket(int pid, int fd, TCPState state) : establish_list(), accept_list(), syn_clients(),
sent_unACKed_segments(), received_unordered_segments()
{	
	this->sockfd = fd;
	this->is_bound = 0;
	this->syscallUUID = -1;
	this->FIN_seq_num = 0;
	this->pid = pid;
	this->state = state;
	this->addrlen = sizeof(struct sockaddr);
	this->send_buffer = NULL;
	this->receive_buffer = NULL;
	this->blocked_for_write = false;
	this->blocked_for_read = false;
	this->congestion_state = SLOW_START;
	this->RTT_time_calculating = false;

	this->RTT = makeTime(100, MSEC);
	this->RTTVAR = makeTime(20, MSEC);
	this->RTO = this->RTT + this->RTTVAR * 4;
	this->cwnd = MSS;
}

Socket::~Socket()
{
	if(this->send_buffer != NULL){
		free(this->send_buffer);
		free(this->receive_buffer);
	}
}

void TCPAssignment::syscall_socket(UUID syscallUUID, int pid, int domain, int type__unused){
	int fd = this->createFileDescriptor(pid);
	if(fd == -1){ // fail
		this->returnSystemCall(syscallUUID, fd);
	}
	else{
		Socket* socket = new Socket(pid, fd, TCPState::CLOSED);
		tcp_context.insert({{socket->pid, fd}, socket});
	}
	this->returnSystemCall(syscallUUID, fd);
}

void TCPAssignment::syscall_close(UUID syscallUUID, int pid, int fd){

	int ret; 
	struct ip_header iph_n = {0};
	struct ip_header iph_h = {0};
	struct tcp_header tcph_n = {0};
	struct tcp_header tcph_h = {0};

	Socket *socket = tcp_context.at({pid, fd});
	//if(socket->is_connected == 0){
	if(	socket->state == TCPState::CLOSED
		|| socket->state == TCPState::LISTEN){
		this->removeFileDescriptor(pid, fd);
		tcp_context.erase({pid, fd});
		// TODO : check if tried to remove existing file descriptor
		ret = 0;
		this->returnSystemCall(syscallUUID, ret);
	}

	else{


		// TODO : FIN retransmission

		// send FIN packet
		//socket->syscallUUID = syscallUUID;

		//socket->sentFIN = 1;
		if(socket->state == TCPState::ESTABLISHED){
			//active close
			socket->state = TCPState::FIN_WAIT_1;
		}
		else if(socket->state == TCPState::CLOSE_WAIT){
			socket->state = TCPState::LAST_ACK;
		}

		socket->FIN_seq_num = socket->seq_num;

		iph_h.source_ip = this->get_sockaddr_ip(&(socket->addr));
		iph_h.dest_ip = this->get_sockaddr_ip(&(socket->peer_addr));
		tcph_h.source_port = this->get_sockaddr_port(&(socket->addr));
		tcph_h.dest_port = this->get_sockaddr_port(&(socket->peer_addr));

		tcph_h.fin_flag = 1;
		tcph_h.seq_num = (socket->seq_num)++;

		this->hton_ip_header(&iph_h, &iph_n);
		this->hton_tcp_header(&tcph_h, &tcph_n);

		Packet *send_packet = this->allocatePacket(14+20+20);
		this->write_headers(send_packet, &iph_n, &tcph_n);
		this->set_common_tcp_fields(send_packet);
		this->sendPacket("IPv4", send_packet);

		//newly added: why not return immediately?
		this->returnSystemCall(syscallUUID, 0);
	}

}

void TCPAssignment::syscall_bind(UUID syscallUUID, int pid, int sockfd, const struct sockaddr *addr, socklen_t addrlen){
	int ret = -1;
	const struct sockaddr *addr2;
	uint32_t s_addr_any = htonl(INADDR_ANY);
	uint32_t s_addr_1 = ((const struct sockaddr_in *)addr)->sin_addr.s_addr;
	uint32_t s_addr_2;
	
	for(std::pair<std::pair<int, int>, Socket* > element : tcp_context){
		if(element.second->is_bound == 0){
			continue;
		}
		else{
			if(element.first.first == pid && element.first.second == sockfd){
				this->returnSystemCall(syscallUUID, ret);				
			}
		}
		addr2 = &(element.second->addr);
		//check overlap of addr and addr2
		s_addr_2 = ((const struct sockaddr_in *)addr2)->sin_addr.s_addr;

		if(s_addr_any == s_addr_1 || s_addr_any == s_addr_2 || s_addr_1 == s_addr_2){
			if(((const struct sockaddr_in *)addr)->sin_port == ((const struct sockaddr_in *)addr2)->sin_port){
				this->returnSystemCall(syscallUUID, ret);
			}
		}
	}

	for(std::pair<std::pair<int, int>, Socket *> element : tcp_context){
		if(element.first.first == pid && element.first.second == sockfd){
			memcpy(&(element.second->addr), addr, addrlen);
			element.second->addrlen = addrlen;
			element.second->is_bound = 1;
			ret = 0;
		}
	}
	this->returnSystemCall(syscallUUID, ret);

}

void TCPAssignment::syscall_getsockname(UUID syscallUUID, int pid, int sockfd, struct sockaddr *addr, socklen_t *addrlen){
	int ret = -1;
	for(std::pair<std::pair<int, int>, Socket *> element : tcp_context){
		if(element.first.first == pid && element.first.second == sockfd){
			memcpy(addr, &element.second->addr, element.second->addrlen);
			*addrlen = element.second->addrlen;
			ret = 0;
		}
	}
	this->returnSystemCall(syscallUUID, ret);
}


void TCPAssignment::syscall_connect(UUID syscallUUID, int pid, int sockfd, const struct sockaddr *addr, socklen_t addrlen){

	struct ip_header iph_n = {0};
	struct ip_header iph_h = {0};
	struct tcp_header tcph_n = {0};
	struct tcp_header tcph_h = {0};

	Socket *client_socket = tcp_context.at({pid, sockfd});

	iph_h.dest_ip = get_sockaddr_ip(addr);
	tcph_h.dest_port = get_sockaddr_port(addr);

	this->set_sockaddr_family(&client_socket->peer_addr);
	this->set_sockaddr_ip(&client_socket->peer_addr, iph_h.dest_ip);
	this->set_sockaddr_port(&client_socket->peer_addr, tcph_h.dest_port);

	int routing_table_index;
	if(client_socket->is_bound == 1){
		tcph_h.source_port = get_sockaddr_port(&(client_socket->addr));
	}
	else{
		tcph_h.source_port = current_port_number++;
		set_sockaddr_port(&(client_socket->addr), tcph_h.source_port);
	}
	routing_table_index = this->getHost()->getRoutingTable((uint8_t *)&(iph_h.dest_ip));

	int source_ip_n;
	if(this->getHost()->getIPAddr((uint8_t *)&source_ip_n, routing_table_index) == false){
		//getIPAddr failed
		this->returnSystemCall(syscallUUID, -1);
		return;
	}
	iph_h.source_ip = ntohl(source_ip_n);
	set_sockaddr_ip(&(client_socket->addr), iph_h.source_ip);

	//set fields
	client_socket->seq_num = 0xfffff402;
	tcph_h.seq_num = (client_socket->seq_num)++;
	tcph_h.syn_flag = 1;

	// Newly Added
	client_socket->next_seq_num = -1; // to check if SYN ACK is received
	client_socket->send_buffer = (uint8_t *)malloc(Socket::BUFFER_SIZE);
	client_socket->receive_buffer = (uint8_t *)malloc(Socket::BUFFER_SIZE);

	client_socket->state = TCPState::SYN_SENT;

	this->hton_ip_header(&iph_h, &iph_n);
	this->hton_tcp_header(&tcph_h, &tcph_n);

	Packet *send_packet = this->allocatePacket(14+20+20);
	this->write_headers(send_packet, &iph_n, &tcph_n);
	this->set_common_tcp_fields(send_packet);
	this->sendPacket("IPv4", send_packet);

	client_socket->syscallUUID = syscallUUID; //timeout or SYNACK unblocks connect();

}

void TCPAssignment::syscall_listen(UUID syscallUUID, int pid, int sockfd, int backlog){
	Socket *server_socket =  tcp_context.at({pid, sockfd});
	server_socket->state = TCPState::LISTEN;
	server_socket->backlog = backlog;
	this->returnSystemCall(syscallUUID, 0);	
}

void TCPAssignment::syscall_accept(UUID syscallUUID, int pid, int sockfd, struct sockaddr *client_addr, socklen_t *client_len){
	Socket *server_socket = tcp_context.at({pid, sockfd});
	// accept is called before connection is established
	if(server_socket->establish_list.empty()){
		server_socket->accept_list.push_back({syscallUUID, client_addr});
		*client_len = sizeof(struct sockaddr);
	}


	// accept is called after connection is established
	else{

		std::pair<int, int> client_pid_sockfd = server_socket->establish_list.back();
		server_socket->establish_list.pop_back();
		Socket *client_socket = tcp_context.at(client_pid_sockfd);
		memcpy(client_addr, &(client_socket->addr), sizeof(struct sockaddr));
		*client_len = sizeof(struct sockaddr);
		returnSystemCall(syscallUUID, client_pid_sockfd.second);
	}
}

void TCPAssignment::syscall_read(UUID syscallUUID, int pid, int fd, void *buf, size_t count){
	//Socket *socket = tcp_context.at({pid, fd});
	size_t num_read;
	uint32_t st, ed;
	Socket *socket = tcp_context.at({pid, fd});
	num_read = std::min({socket->recv_buf_data_length(), (int)count});


	if(num_read != 0){
		st = socket->next_read;
		ed = socket->next_read + num_read - 1;
		socket->recv_buf_read(buf, st, ed);
		socket->next_read += num_read;

		returnSystemCall(syscallUUID, num_read);
	}
	else{
		// block till there is data in receive buffer.
		// expect user to call read() again to read that data.
		socket->blocked_for_read = true;
		socket->syscallUUID = syscallUUID;
		socket->return_num = 0;
	}
}

void TCPAssignment::syscall_write(UUID syscallUUID, int pid, int fd, void *buf, size_t count){

	fflush(0);
	size_t num_write;
	uint32_t st, ed;
	Socket *socket = tcp_context.at({pid, fd});
	num_write = std::min({socket->send_buf_free_length(), (int)count});


	if(num_write != 0){ // there is free buffer space
		st = socket->next_write;
		ed = socket->next_write + num_write - 1;
		socket->send_buf_write(buf, st, ed);
		socket->next_write += num_write;
		send_maximum(socket);
	}

	if(socket->send_buf_free_length() != 0){
		returnSystemCall(syscallUUID, num_write);
	}
	else{
		// block till there is free space in send buffer.
		// expect user to call write() again to use that free space.
		socket->blocked_for_write = true;
		socket->syscallUUID = syscallUUID;
		socket->return_num = num_write;		
	}
}

void TCPAssignment::syscall_getpeername(UUID syscallUUID, int pid, int sockfd, struct sockaddr *addr, socklen_t *addrlen){
	int ret = -1;
	try{
		Socket *socket = tcp_context.at({pid, sockfd});
		memcpy(addr, &(socket->peer_addr), sizeof(struct sockaddr));
		*addrlen = sizeof(struct sockaddr);
		ret = 0;
		returnSystemCall(syscallUUID, ret);		
	}
	catch(const std::out_of_range& oor){
		returnSystemCall(syscallUUID, ret);
	}
}


void TCPAssignment::systemCallback(UUID syscallUUID, int pid, const SystemCallParameter& param)
{
	switch(param.syscallNumber)
	{
	case SOCKET:
		this->syscall_socket(syscallUUID, pid, param.param1_int, param.param2_int);
		break;
	case CLOSE:
		this->syscall_close(syscallUUID, pid, param.param1_int);
		break;
	case READ:
		this->syscall_read(syscallUUID, pid, param.param1_int, param.param2_ptr, param.param3_int);
		break;
	case WRITE:
		this->syscall_write(syscallUUID, pid, param.param1_int, param.param2_ptr, param.param3_int);
		break;
	case CONNECT:
		this->syscall_connect(syscallUUID, pid, param.param1_int,
				static_cast<struct sockaddr*>(param.param2_ptr), (socklen_t)param.param3_int);
		break;
	case LISTEN:
		this->syscall_listen(syscallUUID, pid, param.param1_int, param.param2_int);
		break;
	case ACCEPT:
		this->syscall_accept(syscallUUID, pid, param.param1_int,
				static_cast<struct sockaddr*>(param.param2_ptr),
				static_cast<socklen_t*>(param.param3_ptr));
		break;
	case BIND:
		this->syscall_bind(syscallUUID, pid, param.param1_int,
				static_cast<struct sockaddr *>(param.param2_ptr),
				(socklen_t) param.param3_int);
		break;
	case GETSOCKNAME:
		this->syscall_getsockname(syscallUUID, pid, param.param1_int,
				static_cast<struct sockaddr *>(param.param2_ptr),
				static_cast<socklen_t*>(param.param3_ptr));
		break;
	case GETPEERNAME:
		this->syscall_getpeername(syscallUUID, pid, param.param1_int,
				static_cast<struct sockaddr *>(param.param2_ptr),
				static_cast<socklen_t*>(param.param3_ptr));
		break;
	default:
		assert(0);
	}
}

void TCPAssignment::packetArrived(std::string fromModule, Packet* packet)
{
	struct ip_header rcv_iph_n = {0};
	struct ip_header rcv_iph_h = {0};
	struct tcp_header rcv_tcph_n = {0};
	struct tcp_header rcv_tcph_h = {0};

	struct ip_header new_iph_n = {0};
	struct ip_header new_iph_h = {0};
	struct tcp_header new_tcph_n = {0};
	struct tcp_header new_tcph_h = {0};
	int new_payload_size = -1; // -1: no send
	uint8_t* new_payload_buf = NULL;
	size_t rcv_payload_size = packet->getSize() - (14+20+20);

	// read packet
	this->read_headers(packet, &rcv_iph_n, &rcv_tcph_n);

	// TODO: checksum

	this->ntoh_ip_header(&rcv_iph_n, &rcv_iph_h);
	this->ntoh_tcp_header(&rcv_tcph_n, &rcv_tcph_h);
	bool SYN = (rcv_tcph_h.syn_flag == 1);
	bool ACK = (rcv_tcph_h.ack_flag == 1);
	bool FIN = (rcv_tcph_h.fin_flag == 1);

	Socket *socket = this->find_socket(
		rcv_iph_h.source_ip,
		rcv_tcph_h.source_port,
		rcv_iph_h.dest_ip,
		rcv_tcph_h.dest_port
	);
	if(socket == NULL){
		//No socket to handle packet
		freePacket(packet);
		return;
	}

	//basic fields for answering
	new_tcph_h.source_port = rcv_tcph_h.dest_port;
	new_tcph_h.dest_port = rcv_tcph_h.source_port;
	new_iph_h.source_ip = rcv_iph_h.dest_ip;
	new_iph_h.dest_ip = rcv_iph_h.source_ip;



	// DATA TRANSFER
	if(rcv_payload_size > 0){
		//check window
		bool in_order = socket->next_receive == (uint32_t)rcv_tcph_h.seq_num;
		bool duplicate = false;
		bool out_of_order = false;
		if(in_order){
			//write to buffer if possible (must not write segment partially)

			bool can_write = (socket->recv_buf_data_length() + rcv_payload_size <= Socket::BUFFER_SIZE);
			if(can_write){
				void * buf = malloc(rcv_payload_size);
				packet->readData(14+20+20, buf, rcv_payload_size);
				socket->recv_buf_write(buf, socket->next_receive, socket->next_receive+rcv_payload_size-1);
				free(buf);
				socket->next_receive += rcv_payload_size;
				if(socket->blocked_for_read){
					socket->blocked_for_read = false;
					this->returnSystemCall(socket->syscallUUID, socket->return_num);		
				}
			}
			//send ACK <- TODO: or wait?
		}
		else if(duplicate){
			//send ACK (again)
		}
		else if(out_of_order){
			//write to buffer if possible (must not write segment partially)
			//send (dup) ACK
		}
		send_ACK(socket);

	}
	if(ACK){
		if(socket->state == TCPState::ESTABLISHED || socket->state == TCPState::CLOSE_WAIT){
			//check window, duplicate acks etc
			
			//if((int)socket->send_base < (int)rcv_tcph_h.ack_num){
			//	socket->send_base = rcv_tcph_h.ack_num;
			//}
			bool valid_ack; //Check that ACK is for some unacked but sent byte


			if(socket->send_base < socket->next_seq_num){
				valid_ack = (socket->send_base < rcv_tcph_h.ack_num && rcv_tcph_h.ack_num < socket->next_seq_num);
			}
			else{
				valid_ack = (socket->send_base < rcv_tcph_h.ack_num || rcv_tcph_h.ack_num < socket->next_seq_num);
			}
			if(valid_ack){
				socket->update_send_base(rcv_tcph_h.ack_num);
				calculate_RTO(socket, rcv_tcph_h.ack_num);

				if(socket->congestion_state == CongestionState::SLOW_START){
					socket->cwnd += 1;
				}
				else if(socket->congestion_state == CongestionState::FAST_RECOVERY){
					socket->cwnd/=2;
					socket->congestion_state = CongestionState::CONGESTION_AVOIDANCE;
				}
				else if(socket->congestion_state == CongestionState::CONGESTION_AVOIDANCE){
					socket->cwnd += Socket::MSS * Socket::MSS / cwnd;
				}
			}

			if(socket->blocked_for_write){
				//wake write()
				socket->blocked_for_write = false;
				this->returnSystemCall(socket->syscallUUID, socket->return_num);
			}
			send_maximum(socket);
		}
	}



	// 3-way handshaking
	if(SYN && !ACK && socket->state == TCPState::LISTEN){
		//server received SYN
		if(socket->syn_clients.size() < (size_t)(socket->backlog)){
			//socket->state = TCPState::SYNRCVD is omitted

			//remember approaching client

			this->confirm_syn_client(
			socket,
			rcv_iph_h.source_ip,
			rcv_tcph_h.source_port,
			rcv_tcph_h.ack_num,
			rcv_tcph_h.seq_num
			);

			struct syn_client new_sc = {
				rcv_iph_h.source_ip,
				rcv_tcph_h.source_port,
				rcv_tcph_h.seq_num + 1,
				0
			};
			//set SYNACK fields
			new_payload_size = 0;
			new_tcph_h.syn_flag = 1;
			new_tcph_h.ack_flag = 1;
			new_tcph_h.ack_num = new_sc.ack_num;
			new_tcph_h.seq_num = new_sc.seq_num++;//update before push_back

			socket->syn_clients.push_back(new_sc);
		}
		else{
			//backlog full, ignore.
		}
	}
	if(SYN && ACK && socket->state == TCPState::SYN_SENT){
		//client recieved SYNACK
		if(socket->seq_num == rcv_tcph_h.ack_num){
			//set ACK fields
			new_payload_size = 0;
			new_tcph_h.ack_flag = 1;
			socket->ack_num = rcv_tcph_h.seq_num + 1;
			new_tcph_h.ack_num = socket->ack_num;
			new_tcph_h.seq_num = socket->seq_num++;

			//set Socket fields
			socket->state = TCPState::ESTABLISHED;
			socket->next_seq_num = rcv_tcph_h.ack_num;
			socket->send_base = rcv_tcph_h.ack_num;
			socket->next_write = rcv_tcph_h.ack_num;
			socket->next_receive = rcv_tcph_h.seq_num + 1;
			socket->next_read = rcv_tcph_h.seq_num + 1;

			//return from connect()
			this->returnSystemCall(socket->syscallUUID, 0);
		}
		else{
			//wrong ACK#. ignore
		}
	}
	if(!SYN && ACK && socket->state == TCPState::LISTEN){
		bool sc_ok = this->confirm_syn_client(
			socket,
			rcv_iph_h.source_ip,
			rcv_tcph_h.source_port,
			rcv_tcph_h.ack_num,
			rcv_tcph_h.seq_num
		);
		if(sc_ok){
			//server got ACK, establishes connection
			//conceptually, TCP state condition is SYN_RCVD
			//but let it as LISTEN b/c we lazily allocate Socket
			//i.e. when connection is confirmed

			int fd = this->createFileDescriptor(socket->pid);
			Socket *new_socket = new Socket(socket->pid, fd, TCPState::ESTABLISHED);

			new_socket->seq_num = rcv_tcph_h.ack_num;
			new_socket->ack_num = rcv_tcph_h.seq_num;

			new_socket->send_buffer = (uint8_t *)malloc(Socket::BUFFER_SIZE);
			new_socket->receive_buffer = (uint8_t *)malloc(Socket::BUFFER_SIZE);
			set_sockaddr_ip(&(new_socket->addr), rcv_iph_h.dest_ip);
			set_sockaddr_port(&(new_socket->addr), rcv_tcph_h.dest_port);
			set_sockaddr_family(&(new_socket->addr));
			set_sockaddr_ip(&(new_socket->peer_addr), rcv_iph_h.source_ip);
			set_sockaddr_port(&(new_socket->peer_addr), rcv_tcph_h.source_port);
			set_sockaddr_family(&(new_socket->peer_addr));


			// TODO : initialize send/receive seq_num
			new_socket->next_seq_num = rcv_tcph_h.ack_num;
			new_socket->send_base = rcv_tcph_h.ack_num;
			new_socket->next_write = rcv_tcph_h.ack_num;

			// Don't know if right or not
			new_socket->next_receive = rcv_tcph_h.seq_num;
			new_socket->next_read = rcv_tcph_h.seq_num;

			tcp_context.insert({{new_socket->pid, fd}, new_socket});

			if(socket->accept_list.empty()){
				socket->establish_list.push_back({new_socket->pid, fd});
			}
			else{
				std::pair<int, struct sockaddr *> accept_pair = (socket->accept_list).back();
				(socket->accept_list).pop_back();
				memcpy(accept_pair.second, &(new_socket->peer_addr), sizeof(struct sockaddr));
				returnSystemCall(accept_pair.first, fd);
			}
			//TODO: may contain payload?
		}
	}

	// 4-way close
	if(FIN){
		//TODO: replace seq_num, ack_num with congestion control seq# variables
		//send ACK for FIN
		//TODO: what abt pkt loss gap? (cumulative ack)???
		new_payload_size = 0;
		new_tcph_h.ack_flag = 1;
		socket->ack_num = rcv_tcph_h.seq_num + 1;
		new_tcph_h.ack_num = socket->ack_num;		
		new_tcph_h.seq_num = socket->seq_num;
			// do not increase : no FINACK's response

		if(socket->state == TCPState::ESTABLISHED){
			//passive close
			socket->state = TCPState::CLOSE_WAIT;
		}
		if(socket->state == TCPState::FIN_WAIT_1){
			//simultaneous close
			socket->state = TCPState::CLOSING;
		}
		if(socket->state == TCPState::FIN_WAIT_2){
			//TODO: go to time wait
			//for now, remove socket
			//socket->state = TCPState::TIME_WAIT;
			this->removeFileDescriptor(socket->pid, socket->sockfd);
			tcp_context.erase({socket->pid, socket->sockfd});
		}
	}
	if(ACK){ // NOT "else if" : (FIN_WAIT_1-(CLOSING)->TIME_WAIT)

		if(socket->state == TCPState::FIN_WAIT_1){
			socket->state = TCPState::FIN_WAIT_2;
		}
		if(socket->state == TCPState::CLOSING){
			//TODO: go to time wait
			//for now, remove socket
			//socket->state = TCPState::TIME_WAIT;
			this->removeFileDescriptor(socket->pid, socket->sockfd);
			tcp_context.erase({socket->pid, socket->sockfd});
		}
		if(socket->state == TCPState::LAST_ACK){
			this->removeFileDescriptor(socket->pid, socket->sockfd);
			tcp_context.erase({socket->pid, socket->sockfd});
		}
	}


	if(new_payload_size != -1){
		//send packet
		this->hton_ip_header(&new_iph_h, &new_iph_n);
		this->hton_tcp_header(&new_tcph_h, &new_tcph_n);
		Packet * send_packet = this->allocatePacket(14+20+20+new_payload_size);
		this->write_headers(send_packet, &new_iph_n, &new_tcph_n);
		if(new_payload_size > 0){
			send_packet->writeData(14+20+20, new_payload_buf, new_payload_size);
		}
		this->set_common_tcp_fields(send_packet);
		this->sendPacket("IPv4", send_packet);
	}

	this->freePacket(packet);
}


void TCPAssignment::timerCallback(void* payload)
{

}

/* Helper Functions */


bool TCPAssignment::confirm_syn_client(Socket* socket, int ip, short port, uint32_t sn, uint32_t an){
	std::vector<struct syn_client>::iterator it;
	for(it = socket->syn_clients.begin(); it != socket->syn_clients.end(); it++){
		if(ip == it->ip && port == it->port && it->seq_num == sn, it->ack_num == an){
			socket->syn_clients.erase(it);
			return true;
		}
	}
	return false;
}


/* 	
	find TCP socket that matches (src ip, src port, dst ip, dst port)
	if there is no match, return listen socket for dst ip, dst port
 	return NULL if nothing to return
*/
Socket *TCPAssignment::find_socket(int src_ip, short src_port, int dst_ip, short dst_port){
	Socket * sock;
	Socket * listen_sock = NULL;
	int sock_ip;
	for(std::pair<std::pair<int, int>, Socket *> element : tcp_context){
		sock = element.second;
		sock_ip = this->get_sockaddr_ip(&sock->addr);
		if((sock_ip == 0 || sock_ip == dst_ip)
			&& this->get_sockaddr_port(&sock->addr) == dst_port){
			// dst match
			if(sock->state == TCPState::LISTEN){
				listen_sock = sock;
			}
			else{
				if(		(this->get_sockaddr_ip(&sock->peer_addr) == src_ip)
					&&	(this->get_sockaddr_port(&sock->peer_addr) == src_port)){
					return sock;
				}
				else{
				}
			}
		}
	}
	return listen_sock;
}


void TCPAssignment::set_common_tcp_fields(Packet *packet){

	int packet_size = packet->getSize();
	int tcp_ofs = 14+20;
	int seg_size = packet_size - tcp_ofs;

	struct ip_header iph_n;
	struct tcp_header tcph_n;

	this->read_headers(packet, &iph_n, &tcph_n);

	// write everything except checksum
	tcph_n.hlen = 20/4;
	tcph_n.window_size = htons(Socket::BUFFER_SIZE); //TODO: change rwnd dynamically? no?
	this->write_headers(packet, &iph_n, &tcph_n);

	// TCP checksum
	uint8_t* segbuf = (uint8_t *)malloc(seg_size);
	packet->readData(tcp_ofs, segbuf, seg_size);
	uint16_t sum = NetworkUtil::tcp_sum(iph_n.source_ip, iph_n.dest_ip, segbuf, seg_size);
	sum = ~sum;
	tcph_n.checksum = htons(sum);
	free(segbuf);
	this->write_headers(packet, &iph_n, &tcph_n);
}

void TCPAssignment::write_headers(Packet *packet, struct ip_header *ip, struct tcp_header *tcp){
	if(ip != NULL){
		packet->writeData(14, ip, 20);
	}
	if(tcp != NULL){
		packet->writeData(14 + 20, tcp, 20);
	}
}

void TCPAssignment::read_headers(Packet *packet, struct ip_header *ip, struct tcp_header *tcp){
	if(ip != NULL){
		packet->readData(14, ip, 20);
	}
	if(tcp != NULL){
		packet->readData(14 + 20, tcp, 20);
	}
}

void TCPAssignment::ntoh_ip_header(struct ip_header *n, struct ip_header *h){
	//skip buffer
	h->source_ip |= ntohl(n->source_ip);
	h->dest_ip |= ntohl(n->dest_ip);
}

void TCPAssignment::hton_ip_header(struct ip_header *h, struct ip_header *n){
	//skip buffer
	n->source_ip |= htonl(h->source_ip);
	n->dest_ip |= htonl(h->dest_ip);
}

void TCPAssignment::ntoh_tcp_header(struct tcp_header *n, struct tcp_header *h){
	h->source_port |= ntohs(n->source_port);
	h->dest_port |= ntohs(n->dest_port);
	h->seq_num |= ntohl(n->seq_num);
	h->ack_num |= ntohl(n->ack_num);
	//skip reserved_1
	h->hlen |= n->hlen; //4bit
	h->fin_flag |= n->fin_flag;
	h->syn_flag |= n->syn_flag;
	h->rst_flag |= n->rst_flag;
	h->psh_flag |= n->psh_flag;
	h->ack_flag |= n->ack_flag;
	h->urg_flag |= n->urg_flag;
	//skip reserved 2,3
	h->window_size |= ntohs(n->window_size);
	h->checksum |= ntohs(n->checksum);
	// skip urgent ptr
}

void TCPAssignment::hton_tcp_header(struct tcp_header *h, struct tcp_header *n){
	n->source_port |= ntohs(h->source_port);
	n->dest_port |= ntohs(h->dest_port);
	n->seq_num |= ntohl(h->seq_num);
	n->ack_num |= ntohl(h->ack_num);
	//skip reserved_1
	n->hlen |= h->hlen; //4bit
	n->fin_flag |= h->fin_flag;
	n->syn_flag |= h->syn_flag;
	n->rst_flag |= h->rst_flag;
	n->psh_flag |= h->psh_flag;
	n->ack_flag |= h->ack_flag;
	n->urg_flag |= h->urg_flag;
	//skip reserved 2,3
	n->window_size |= ntohs(h->window_size);
	n->checksum |= ntohs(h->checksum);
	// skip urgent ptr
}

int TCPAssignment::get_sockaddr_ip(const struct sockaddr *addr){
	return ntohl((((const struct sockaddr_in *)addr)->sin_addr.s_addr));
}

short TCPAssignment::get_sockaddr_port(const struct sockaddr *addr){
	return ntohs(((const struct sockaddr_in *)addr)->sin_port);
}

void TCPAssignment::set_sockaddr_ip(struct sockaddr *addr, int ip){
	((struct sockaddr_in *)addr)->sin_addr.s_addr = htonl(ip);
}

void TCPAssignment::set_sockaddr_port(struct sockaddr *addr, short port){
	((struct sockaddr_in *)addr)->sin_port = htons(port);
}

void TCPAssignment::set_sockaddr_family(struct sockaddr *addr){
	((struct sockaddr_in *)addr)->sin_family = AF_INET;
}

void Socket::update_send_base(uint32_t ack_num){
	uint32_t next_sb;
	while(true){
		try{
			next_sb = this->sent_unACKed_segments.at(this->send_base)+1;
			this->sent_unACKed_segments.erase(this->send_base);
			this->send_base = next_sb;
			if(this->send_base == ack_num){
				break;
			}
		}
		catch(const std::out_of_range& oor){
			printf("update_send_base: no sent&unACKed segment corresponding to recieved ACK#\n");
		}
	}
}


int Socket::send_buf_free_length(){
	// |....[sb]DDDD[nw].....|
	// |DDDD[nw]....[sb]DDDDD|
	if(this->send_base == this->next_write){
		return BUFFER_SIZE;
	}
	else{
		return (this->send_base - this->next_write + BUFFER_SIZE)%BUFFER_SIZE;
	}
}

int Socket::recv_buf_data_length(){
	// |....[rd]DDDD[rcv]....|
	// |DDD[rcv]....[rd]DDDDD|
	if(this->next_receive + (uint32_t)BUFFER_SIZE == this->next_read){
		return BUFFER_SIZE;
	}
	else{
		return (this->next_receive - this->next_read)%BUFFER_SIZE;
	}
}

int Socket::send_buf_write(void * buf, uint32_t st, uint32_t ed){
	// |....[sti]DDDD[edi].....|
	// |DDDD[edi]....[sti]DDDDD|
	int st_idx = (st + BUFFER_SIZE) % BUFFER_SIZE;
	int ed_idx = (ed + BUFFER_SIZE) % BUFFER_SIZE;

	if(st_idx <= ed_idx){
		memcpy(this->send_buffer + st_idx, buf, ed_idx - st_idx + 1);
	}
	else{
		memcpy((uint8_t *)this->send_buffer + st_idx, buf, BUFFER_SIZE - st_idx);
		memcpy(this->send_buffer, (uint8_t *)buf + BUFFER_SIZE - st_idx, ed_idx + 1);
	}
	return ed-st;
}

int Socket::send_buf_read(void * buf, uint32_t st, uint32_t ed){
	int st_idx = (st + BUFFER_SIZE) % BUFFER_SIZE;
	int ed_idx = (ed + BUFFER_SIZE) % BUFFER_SIZE;
	if(st_idx <= ed_idx){
		memcpy(buf, this->send_buffer + st_idx, ed_idx - st_idx + 1);
	}
	else{
		memcpy(buf, (uint8_t *)this->send_buffer + st_idx, BUFFER_SIZE - st_idx);
		memcpy((uint8_t *)buf + BUFFER_SIZE - st_idx, this->send_buffer, ed_idx + 1);
	}
	return ed-st;	
}

int Socket::recv_buf_write(void * buf, uint32_t st, uint32_t ed){
	int st_idx = (st + BUFFER_SIZE) % BUFFER_SIZE;
	int ed_idx = (ed + BUFFER_SIZE) % BUFFER_SIZE;
	if(st_idx <= ed_idx){
		memcpy((uint8_t *)this->receive_buffer + st_idx, buf, ed_idx - st_idx + 1);
	}
	else{
		memcpy((uint8_t *)this->receive_buffer + st_idx, buf, BUFFER_SIZE - st_idx);
		memcpy(this->receive_buffer, (uint8_t *)buf + BUFFER_SIZE - st_idx, ed_idx + 1);
	}
	return ed-st;
}

int Socket::recv_buf_read(void * buf, uint32_t st, uint32_t ed){
	int st_idx = (st + BUFFER_SIZE) % BUFFER_SIZE;
	int ed_idx = (ed + BUFFER_SIZE) % BUFFER_SIZE;
	if(st_idx <= ed_idx){
		memcpy(buf, (uint8_t *)this->receive_buffer + st_idx, ed_idx - st_idx + 1);
	}
	else{
		memcpy(buf, (uint8_t *)this->receive_buffer + st_idx, BUFFER_SIZE - st_idx);
		memcpy((uint8_t *)buf + BUFFER_SIZE - st_idx, this->receive_buffer, ed_idx + 1);
	}
	return ed-st;	
}




//send seq# st ~ seq# ed
void TCPAssignment::send_data_packet(Socket * socket, uint32_t st, uint32_t ed){

	struct ip_header iph_n = {0};
	struct ip_header iph_h = {0};
	struct tcp_header tcph_n = {0};
	struct tcp_header tcph_h = {0};

	iph_h.source_ip = this->get_sockaddr_ip(&(socket->addr));
	iph_h.dest_ip = this->get_sockaddr_ip(&(socket->peer_addr));
	tcph_h.source_port = this->get_sockaddr_port(&(socket->addr));
	tcph_h.dest_port = this->get_sockaddr_port(&(socket->peer_addr));

	tcph_h.seq_num = st;
	tcph_h.ack_num = socket->next_receive;
	tcph_h.ack_flag = 1;



	if(!(socket->RTT_time_calculating)){
		socket->RTT_time_calculating = true;
		socket->RTT_sent_time = this->getHost()->getSystem()->getCurrentTime();
		socket->RTT_wating_ACK_num = ed + 1;
	}

	this->hton_ip_header(&iph_h, &iph_n);
	this->hton_tcp_header(&tcph_h, &tcph_n);

	int new_payload_size = ed - st + 1;
	void * buf = malloc(new_payload_size);
	socket->send_buf_read(buf, st, ed);
	Packet *send_packet = this->allocatePacket(14 + 20 + 20 + new_payload_size);
	this->write_headers(send_packet, &iph_n, &tcph_n);
	send_packet->writeData(14 + 20 + 20, buf, new_payload_size);
	this->set_common_tcp_fields(send_packet);

	this->sendPacket("IPv4", send_packet);
	free(buf);
}

void TCPAssignment::send_ACK(Socket * socket){
	struct ip_header iph_n = {0};
	struct ip_header iph_h = {0};
	struct tcp_header tcph_n = {0};
	struct tcp_header tcph_h = {0};

	iph_h.source_ip = this->get_sockaddr_ip(&(socket->addr));
	iph_h.dest_ip = this->get_sockaddr_ip(&(socket->peer_addr));
	tcph_h.source_port = this->get_sockaddr_port(&(socket->addr));
	tcph_h.dest_port = this->get_sockaddr_port(&(socket->peer_addr));

	tcph_h.seq_num = socket->next_seq_num;
	tcph_h.ack_num = socket->next_receive;
	tcph_h.ack_flag = 1;

	this->hton_ip_header(&iph_h, &iph_n);
	this->hton_tcp_header(&tcph_h, &tcph_n);

	Packet *send_packet = this->allocatePacket(14 + 20 + 20);
	this->write_headers(send_packet, &iph_n, &tcph_n);
	this->set_common_tcp_fields(send_packet);
	this->sendPacket("IPv4", send_packet);
}

//first transmission of maximum possible amount of data
int TCPAssignment::send_maximum(Socket * socket){
	uint32_t st, ed;
	int segment_size;

	int ret = 0;
	while(true){
		if(socket->next_seq_num == socket->next_write){
			return ret;
		}
		if(socket->next_seq_num - socket->send_base >= socket->cwnd){
			// limit # of sent but unACKed bytes to congestion window
			return ret;
		}
		st = socket->next_seq_num;
		segment_size = std::min({(int)(socket->next_write - st), MSS, socket->cwnd -(socket->next_seq_num - socket->send_base)});
		ed = st + segment_size - 1;
		send_data_packet(socket, st, ed);
		socket->next_seq_num += segment_size;
		socket->sent_unACKed_segments.insert({st, ed});		
		ret += segment_size;
	}
}

void TCPAssignment::calculate_RTO(Socket * socket, uint32_t ACK_num){
	if(!(socket->RTT_time_calculating)){
		return;
	}
	if(ACK_num == socket->wating_ACK_num){
		Time recv_time = this->getHost()->getSystem()->getCurrentTime();
		Time sample_RTT = recv_time - socket->RTT_sent_time;
		socket->RTT = socket->RTT - (socket->RTT >> 3) + (sample_RTT >> 3);
		socket->RTTVAR = socket->RTTVAR - (socket->RTTVAR >> 2) + ((socket->RTT - sample_RTT) >> 2);
		socket->RTO = socket->RTT + 4 * socket->RTTVAR;
		socket->RTT_time_calculating = false;
	}
}

}
