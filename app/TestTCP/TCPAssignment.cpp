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
	INITIAL_RWND = 51200;
}

void TCPAssignment::finalize()
{

}

void TCPAssignment::syscall_socket(UUID syscallUUID, int pid, int domain, int type__unused){
	int fd = this->createFileDescriptor(pid);
	if(fd == -1){ // fail
		this->returnSystemCall(syscallUUID, fd);
	}
	Socket* socket = new Socket();
	socket->set_domain(domain);
	socket->set_type__unused(type__unused);
	socket->is_bound = 0;
	socket->is_listen = 0;
	socket->syscallUUID = -1;
	socket->pid = pid;
	socket->sockfd = fd;
	socket->is_connected = 0;
	socket->gotFIN = 0;
	socket->sentFIN = 0;
	socket->gotFINACK = 0;
	socket->FIN_seq_num = 0;
	std::pair<int, int> key = std::make_pair(pid, fd);
	tcp_context.insert({key, socket});
	this->returnSystemCall(syscallUUID, fd);

}

void TCPAssignment::syscall_close(UUID syscallUUID, int pid, int fd){

	int ret; 
	struct ip_header iph_n = {0};
	struct ip_header iph_h = {0};
	struct tcp_header tcph_n = {0};
	struct tcp_header tcph_h = {0};

	Socket *socket = tcp_context.at({pid, fd});
	if(socket->is_connected == 0){
		this->removeFileDescriptor(pid, fd);
		tcp_context.erase({pid, fd});
		// TODO : check if tried to remove existing file descriptor
		ret = 0;
		this->returnSystemCall(syscallUUID, ret);
	}

	else{
		// send FIN packet
		socket->syscallUUID = syscallUUID;
		socket->sentFIN = 1;
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
		printf("connect(): getIPAddr failed\n");
		this->returnSystemCall(syscallUUID, -1);
		return;
	}
	iph_h.source_ip = ntohl(source_ip_n);
	set_sockaddr_ip(&(client_socket->addr), iph_h.source_ip);

	//set fields
	client_socket->seq_num = 0xfffff402;
	tcph_h.seq_num = (client_socket->seq_num)++;
	tcph_h.syn_flag = 1;

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
	server_socket-> is_listen = 1;
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
		//this->syscall_read(syscallUUID, pid, param.param1_int, param.param2_ptr, param.param3_int);
		break;
	case WRITE:
		//this->syscall_write(syscallUUID, pid, param.param1_int, param.param2_ptr, param.param3_int);
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

	Packet* send_packet = NULL;

	struct ip_header rcv_iph_n = {0};
	struct ip_header rcv_iph_h = {0};
	struct tcp_header rcv_tcph_n = {0};
	struct tcp_header rcv_tcph_h = {0};

	struct ip_header new_iph_n = {0};
	struct ip_header new_iph_h = {0};
	struct tcp_header new_tcph_n = {0};
	struct tcp_header new_tcph_h = {0};

	this->read_headers(packet, &rcv_iph_n, &rcv_tcph_n);
	this->ntoh_ip_header(&rcv_iph_n, &rcv_iph_h);
	this->ntoh_tcp_header(&rcv_tcph_n, &rcv_tcph_h);

	Socket *rcv_socket = this->find_socket(
		rcv_iph_h.source_ip,
		rcv_tcph_h.source_port,
		rcv_iph_h.dest_ip,
		rcv_tcph_h.dest_port
	);

	if(rcv_socket == NULL){
		printf("packetArrived(): No recieve socket\n");
		freePacket(packet);
		return;
	}

	new_tcph_h.source_port = rcv_tcph_h.dest_port;
	new_tcph_h.dest_port = rcv_tcph_h.source_port;
	new_iph_h.source_ip = rcv_iph_h.dest_ip;
	new_iph_h.dest_ip = rcv_iph_h.source_ip;

	// When to check recieve_socket != NULL ?
	// need to recieve data after establishing connection (even for unaccepted connections)

	if(rcv_tcph_h.syn_flag == 1){
		if(rcv_tcph_h.ack_flag == 1){
			// SYN=1 ACK=1
			// Client recieved SYNACK
			if(rcv_socket->seq_num == rcv_tcph_h.ack_num){

				//send ACK packet
				new_tcph_h.ack_flag = 1;
				rcv_socket->ack_num = rcv_tcph_h.seq_num + 1;
				new_tcph_h.ack_num = rcv_socket->ack_num;

				new_tcph_h.seq_num = rcv_socket->seq_num;
				rcv_socket->seq_num++;
				
				this->hton_ip_header(&new_iph_h, &new_iph_n);
				this->hton_tcp_header(&new_tcph_h, &new_tcph_n);

				send_packet = this->allocatePacket(14+20+20);
				this->write_headers(send_packet, &new_iph_n, &new_tcph_n);
				this->set_common_tcp_fields(send_packet);
				this->sendPacket("IPv4", send_packet);

				//wake connect()

				rcv_socket->is_connected = 1;
				this->returnSystemCall(rcv_socket->syscallUUID, 0);
			}
			else{
				printf("wrong ack_num for SYNACK\n");
			}
		}
		else{
			// SYN=1 ACK=0
			// Server recieved SYN
			if(rcv_socket->is_listen == 1){
				if(rcv_socket->establish_list.size() + rcv_socket->syn_clients.size() < (unsigned)(rcv_socket->backlog)){
					struct syn_client new_syn_client = {rcv_iph_h.source_ip, rcv_tcph_h.source_port, rcv_tcph_h.seq_num + 1, 0};
					rcv_socket->syn_clients.push_back(new_syn_client);

					//send SYNACK packet
					new_tcph_h.syn_flag = 1;
					new_tcph_h.ack_flag = 1;
					new_tcph_h.ack_num = new_syn_client.ack_num;
					new_tcph_h.seq_num = new_syn_client.seq_num;
					
					rcv_socket->seq_num++;
					rcv_socket->ack_num = new_syn_client.ack_num;

					this->hton_ip_header(&new_iph_h, &new_iph_n);
					this->hton_tcp_header(&new_tcph_h, &new_tcph_n);

					send_packet = this->allocatePacket(14+20+20);
					this->write_headers(send_packet, &new_iph_n, &new_tcph_n);
					this->set_common_tcp_fields(send_packet);
					this->sendPacket("IPv4", send_packet);
				}
				else{
					// ignore
				}

			}
			else{
				// ignore
			}
		}
	}
	else{
		// SYN == 0
		if(rcv_socket->is_listen == 1){
			std::vector<struct syn_client>::iterator it;
			for(it = rcv_socket->syn_clients.begin(); it != rcv_socket->syn_clients.end(); it++){
				if(rcv_iph_h.source_ip == (*it).ip && rcv_tcph_h.source_port == (*it).port){
					Socket *socket = new Socket();
					socket->is_bound = 0;
					socket->is_listen = 0;
					socket->syscallUUID = -1;
					socket->pid = rcv_socket->pid;
					socket->is_connected = 1;
					socket->gotFIN = 0;
					socket->sentFIN = 0;
					socket->gotFINACK = 0;
					socket->FIN_seq_num = 0;
					socket->addrlen = sizeof(struct sockaddr);

					socket->seq_num = rcv_socket->seq_num;				

					set_sockaddr_ip(&(socket->addr), rcv_iph_h.dest_ip);
					set_sockaddr_port(&(socket->addr), rcv_tcph_h.dest_port);
					set_sockaddr_family(&(socket->addr));
					set_sockaddr_ip(&(socket->peer_addr), rcv_iph_h.source_ip);
					set_sockaddr_port(&(socket->peer_addr), rcv_tcph_h.source_port);
					set_sockaddr_family(&(socket->peer_addr));

					int fd = this->createFileDescriptor(socket->pid);
					socket->sockfd = fd;
					tcp_context.insert({{socket->pid, fd}, socket});
					if(rcv_socket->accept_list.empty()){
						rcv_socket->establish_list.push_back({socket->pid, fd});
					}
					else{
						std::pair<int, struct sockaddr *> accept_pair = (rcv_socket->accept_list).back();
						(rcv_socket->accept_list).pop_back();
						memcpy(accept_pair.second, &(socket->peer_addr), sizeof(struct sockaddr));
						returnSystemCall(accept_pair.first, fd);
					}

				}

			}

		}
		else{
			if(rcv_tcph_h.fin_flag == 1){
				rcv_socket->gotFIN = 1;

				//send ACK for recieved FIN

				new_tcph_h.ack_flag = 1;
				rcv_socket->ack_num = rcv_tcph_h.seq_num + 1;
				new_tcph_h.ack_num = rcv_socket->ack_num;

				new_tcph_h.seq_num = rcv_socket->seq_num; // do not increase : no FINACK's seponse

				this->hton_ip_header(&new_iph_h, &new_iph_n);
				this->hton_tcp_header(&new_tcph_h, &new_tcph_n);

				send_packet = this->allocatePacket(14+20+20);
				this->write_headers(send_packet, &new_iph_n, &new_tcph_n);
				this->set_common_tcp_fields(send_packet);
				this->sendPacket("IPv4", send_packet);

				if(rcv_socket->gotFINACK == 1){
					// socket should be closed
					this->removeFileDescriptor(rcv_socket->pid, rcv_socket->sockfd);
					tcp_context.erase({rcv_socket->pid, rcv_socket->sockfd});

				}


			}


			else if(rcv_socket->sentFIN && (rcv_socket->FIN_seq_num + 1 == rcv_tcph_h.ack_num)){
				rcv_socket->gotFINACK = 1;
				UUID close_syscall_UUID = rcv_socket->syscallUUID;
				if(rcv_socket->gotFIN == 1){
					// socket should be closed
					this->removeFileDescriptor(rcv_socket->pid, rcv_socket->sockfd);
					tcp_context.erase({rcv_socket->pid, rcv_socket->sockfd});

				}

				returnSystemCall(close_syscall_UUID, 0);				
			}

			else{
				// ACK for actual data

			}
		}
	}

	this->freePacket(packet);
}


void TCPAssignment::timerCallback(void* payload)
{

}

/* Helper Functions */


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
			if(sock->is_listen == 1){
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
	tcph_n.window_size = htons(INITIAL_RWND); //TODO: must change dynamically
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



}
