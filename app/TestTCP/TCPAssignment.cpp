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
	std::pair<int, int> key = std::make_pair(pid, fd);
	tcp_context.insert({key, socket});
	this->returnSystemCall(syscallUUID, fd);

}

void TCPAssignment::syscall_close(UUID syscallUUID, int pid, int fd){
	this->removeFileDescriptor(pid, fd);
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
		addr2 = element.second->addr;
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
			element.second->addr = addr;
			element.second->addrlen = addrlen;
			element.second->is_bound = 1;
			ret = 0;
		}
	}
	this->returnSystemCall(syscallUUID, ret);

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
		//this->syscall_connect(syscallUUID, pid, param.param1_int,
		//		static_cast<struct sockaddr*>(param.param2_ptr), (socklen_t)param.param3_int);
		break;
	case LISTEN:
		//this->syscall_listen(syscallUUID, pid, param.param1_int, param.param2_int);
		break;
	case ACCEPT:
		//this->syscall_accept(syscallUUID, pid, param.param1_int,
		//		static_cast<struct sockaddr*>(param.param2_ptr),
		//		static_cast<socklen_t*>(param.param3_ptr));
		break;
	case BIND:
		this->syscall_bind(syscallUUID, pid, param.param1_int,
				static_cast<struct sockaddr *>(param.param2_ptr),
				(socklen_t) param.param3_int);
		break;
	case GETSOCKNAME:
		//this->syscall_getsockname(syscallUUID, pid, param.param1_int,
		//		static_cast<struct sockaddr *>(param.param2_ptr),
		//		static_cast<socklen_t*>(param.param3_ptr));
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

}

void TCPAssignment::timerCallback(void* payload)
{

}


}
