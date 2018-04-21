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
	std::pair<int, int> key = std::make_pair(pid, fd);
	tcp_context.insert({key, socket});
	this->returnSystemCall(syscallUUID, fd);

}

void TCPAssignment::syscall_close(UUID syscallUUID, int pid, int fd){
	this->removeFileDescriptor(pid, fd);
	tcp_context.erase({pid, fd});
	// TODO : check if tried to remove existing file descriptor
	int ret = 0; 
	this->returnSystemCall(syscallUUID, ret);

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
			// printf("here : %d %d\n", (int)element.first.second, (int)sockfd);
			if(element.first.second == sockfd){
				this->returnSystemCall(syscallUUID, ret);				
			}
		}
		addr2 = &(element.second->addr);
		//check overlap of addr and addr2
		s_addr_2 = ((const struct sockaddr_in *)addr2)->sin_addr.s_addr;

		if(s_addr_any == s_addr_1 || s_addr_any == s_addr_2 || s_addr_1 == s_addr_2){
			// printf("%d %d\n",ntohs(((const struct sockaddr_in *)addr)->sin_port), ntohs(((const struct sockaddr_in *)addr2)->sin_port));
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

	struct ip_header ip_header = {0};
	struct tcp_header tcp_header = {0};

	// save dest ip address	
	ip_header.dest_ip = (((const struct sockaddr_in *)addr)->sin_addr.s_addr);
	// ip_header.dest_ip = htonl(12123123);
	// send_packet->writeData(14 + 16, &(((const struct sockaddr_in *)addr)->sin_addr.s_addr), 4);

	// write source ip address
	Socket *client_socket =  tcp_context.at({pid, sockfd});

	int source_port; //host ordering
	if(client_socket->is_bound == 1){
		const struct sockaddr_in buf = *(const struct sockaddr_in *)&(client_socket->addr);
		source_port = (int)ntohs(buf.sin_port);

	}
	else{
		uint8_t dest_ip[4];
		int dest_ip_int = ntohl(((const struct sockaddr_in *)addr)->sin_addr.s_addr);
		memcpy(dest_ip, &dest_ip_int, 4);
		source_port = this->getHost()->getRoutingTable(dest_ip);
		((struct sockaddr_in *)&(client_socket->addr))->sin_port = source_port;
	}

	uint8_t source_ip[4];
	int source_ip_int;
	if(this->getHost()->getIPAddr(source_ip, source_port) == false){
		printf("connect(): getIPAddr fail\n");
		this->returnSystemCall(syscallUUID, -1);
	}
	else{
		//save src ip
		memcpy(&source_ip_int, source_ip, 4);
		source_ip_int = htonl(source_ip_int);
		ip_header.source_ip = source_ip_int;

		// save src/dest port
		source_port = htons(source_port);
		tcp_header.source_port = source_port;
		tcp_header.dest_port = (((const struct sockaddr_in *)addr)->sin_port);


		// 'ACK packet' attributes

		client_socket->seq_num = 0;
		tcp_header.seq_num = client_socket->seq_num;
		client_socket->seq_num++;

		// set SYN flag
		tcp_header.syn_flag = 1;

		Packet *send_packet = this->allocatePacket(14 + 20 + 20);
		this->write_packet(send_packet, &ip_header, &tcp_header);
		

		this->sendPacket("IPv4", send_packet);
		struct sockaddr_in *temp = (struct sockaddr_in *)&(client_socket->addr);
		temp->sin_addr.s_addr = source_ip_int;
		temp->sin_port = source_port;
		client_socket->syscallUUID = syscallUUID;
		
		// wait for timeout or syn ack returns connect.

	}
}

void TCPAssignment::syscall_listen(UUID syscallUUID, int pid, int sockfd, int backlog){
	Socket *server_socket =  tcp_context.at({pid, sockfd});
	server_socket-> is_listen = 1;
	server_socket->backlog = backlog;
	this->returnSystemCall(syscallUUID, 0);	
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
		// this->syscall_accept(syscallUUID, pid, param.param1_int,
		// 		static_cast<struct sockaddr*>(param.param2_ptr),
		// 		static_cast<socklen_t*>(param.param3_ptr));
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
		//this->syscall_getpeername(syscallUUID, pid, param.param1_int,
		//		static_cast<struct sockaddr *>(param.param2_ptr),
		//		static_cast<socklen_t*>(param.param3_ptr));
		break;
	default:
		assert(0);
	}
}

void TCPAssignment::packetArrived(std::string fromModule, Packet* packet)
{

	struct ip_header receive_ip_header;
	struct tcp_header receive_tcp_header;
	struct ip_header new_ip_header;
	struct tcp_header new_tcp_header;

	this->read_packet(packet, &receive_ip_header, &receive_tcp_header);
	Socket *receive_socket = this->find_socket(receive_tcp_header.dest_port, receive_ip_header.dest_ip);
	if(receive_tcp_header.syn_flag == 1){
		if(receive_tcp_header.ack_flag == 0){

		}
		else if(receive_tcp_header.ack_flag == 1){
			// client recieved SYNACK
			//return from connect()
			if(receive_socket->seq_num + 1 == receive_tcp_header.ack_num){
				new_ip_header.source_ip = receive_ip_header.dest_ip;
				new_ip_header.dest_ip = receive_ip_header.source_ip;
				new_tcp_header.ack_num = receive_tcp_header.seq_num + 1;
				receive_socket->ack_num = receive_tcp_header.seq_num + 1;
				new_tcp_header.seq_num = receive_tcp_header.ack_num;
				new_tcp_header.ack_flag = 1;
				receive_socket->seq_num++;

				Packet *send_packet = this->allocatePacket(14 + 20 + 20);
				this->write_packet(send_packet, &new_ip_header, &new_tcp_header);
				this->sendPacket("IPv4", send_packet);
				this->returnSystemCall(receive_socket->syscallUUID, 1);
			}
			else{
				printf("wrong ack_num for syn ack packet\n");
			}
		}
	}
	else if(receive_tcp_header.syn_flag == 0){

	}

	this->freePacket(packet);
}

void TCPAssignment::timerCallback(void* payload)
{

}

Socket *TCPAssignment::find_socket(short port, int ip){
	//assume args are network byte ordering
	for(std::pair<std::pair<int, int>, Socket *> element : tcp_context){
		struct sockaddr_in * temp_addr_in = (struct sockaddr_in *)&(element.second->addr);
		int temp_ip = temp_addr_in->sin_addr.s_addr;
		short temp_port = temp_addr_in->sin_port;
		if((temp_ip == 0 || temp_ip == ip) && (temp_port == port)){
			return element.second;
		}		
	}
	return NULL;
} 

void TCPAssignment::write_packet(Packet *packet, struct ip_header *ip, struct tcp_header *tcp){
	if(ip != NULL){
		packet->writeData(14, ip, 20);
	}
	if(tcp != NULL){
		packet->writeData(14 + 20, tcp, 20);
	}
}

void TCPAssignment::read_packet(Packet *packet, struct ip_header *ip, struct tcp_header *tcp){
	if(ip != NULL){
		packet->readData(14, ip, 20);
	}
	if(tcp != NULL){
		packet->readData(14 + 20, tcp, 20);
	}
}




}
