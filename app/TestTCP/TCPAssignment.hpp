/*
 * E_TCPAssignment.hpp
 *
 *  Created on: 2014. 11. 20.
 *      Author: Keunhong Lee
 */

#ifndef E_TCPASSIGNMENT_HPP_
#define E_TCPASSIGNMENT_HPP_


#include <E/Networking/E_Networking.hpp>
#include <E/Networking/E_Host.hpp>
#include <arpa/inet.h>
#include <netinet/tcp.h>
#include <netinet/ip.h>
#include <netinet/in.h>


#include <E/E_TimerModule.hpp>

namespace E
{
// Socket : open socket's information
class Socket{
public:
	int domain;
	int type__unused;
	struct sockaddr addr;
	socklen_t addrlen;	
	int is_bound;
public:
	void set_domain(int domain){
		this->domain = domain; 
	}
	void set_type__unused(int type__unused){
		this->type__unused = type__unused;
	}
};


class TCPAssignment : public HostModule, public NetworkModule, public SystemCallInterface, private NetworkLog, private TimerModule
{


private:

	//PJ1 : socket context table
	std::unordered_map<std::pair<int, int>, Socket*> tcp_context;


	virtual void timerCallback(void* payload) final;

public:

	TCPAssignment(Host* host);
	virtual void initialize();
	virtual void finalize();
	virtual ~TCPAssignment();
protected:
	virtual void syscall_socket(UUID syscallUUID, int pid, int domain, int type__unused) final;
	virtual void syscall_close(UUID syscallUUID, int pid, int fd) final;
	virtual void syscall_bind(UUID syscallUUID, int pid, int sockfd, const struct sockaddr *addr, socklen_t addrlen) final;
	virtual void syscall_getsockname(UUID syscallUUID, int pid, int sockfd, struct sockaddr *addr, socklen_t *addrlen) final;

	virtual void systemCallback(UUID syscallUUID, int pid, const SystemCallParameter& param) final;
	virtual void packetArrived(std::string fromModule, Packet* packet) final;
};

class TCPAssignmentProvider
{
private:
	TCPAssignmentProvider() {}
	~TCPAssignmentProvider() {}
public:
	static HostModule* allocate(Host* host) { return new TCPAssignment(host); }
};

}


#endif /* E_TCPASSIGNMENT_HPP_ */
