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
	int ack_num; // expected sequence number for this socket to recieve
	int seq_num; // next sequence number to send
	int is_listen;
	int syscallUUID;
	int backlog;
	struct sockaddr peer_addr;

public:
	void set_domain(int domain){
		this->domain = domain; 
	}
	void set_type__unused(int type__unused){
		this->type__unused = type__unused;
	}
};

struct ip_header{
	char buffer[12];
	int source_ip;
	int dest_ip;
};

struct tcp_header{
	short source_port;
	short dest_port;
	int seq_num;
	int ack_num;

	unsigned char reserved_1 : 4;
	unsigned char hlen : 4;
	
	unsigned short fin_flag : 1;
	unsigned short syn_flag : 1;
	unsigned short rst_flag : 1;
	unsigned short psh_flag : 1;
	unsigned short ack_flag : 1;
	unsigned short urg_flag : 1;
	unsigned short reserved_3 : 1;
	unsigned short reserved_2 : 1;

	short window_size;
	short checksum;
	short urgent_pointer;
};


class TCPAssignment : public HostModule, public NetworkModule, public SystemCallInterface, private NetworkLog, private TimerModule
{


private:

	//PJ1 : socket context table
	std::unordered_map<std::pair<int, int>, Socket*> tcp_context;

	//PJ2 : new port number
	int current_port_number;
	int INITIAL_RWND;

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
	virtual void syscall_connect(UUID syscallUUID, int pid, int sockfd, const struct sockaddr *addr, socklen_t addrlen) final;
	virtual void syscall_listen(UUID syscallUUID, int pid, int sockfd, int backlog) final;
	virtual void syscall_getpeername(UUID syscallUUID, int pid, int sockfd, struct sockaddr *addr, socklen_t *addrlen) final;

	virtual void systemCallback(UUID syscallUUID, int pid, const SystemCallParameter& param) final;
	virtual void packetArrived(std::string fromModule, Packet* packet) final;




	Socket *find_socket(short port, int ip);

	void write_headers(Packet *packet, struct ip_header *ip, struct tcp_header *tcp);
	void read_headers(Packet *packet, struct ip_header *ip, struct tcp_header *tcp);

	void ntoh_ip_header(struct ip_header *n, struct ip_header *h);
	void hton_ip_header(struct ip_header *h, struct ip_header *n);
	void ntoh_tcp_header(struct tcp_header *n, struct tcp_header *h);
	void hton_tcp_header(struct tcp_header *n, struct tcp_header *h);

	void set_common_tcp_fields(Packet *packet);

	int get_sockaddr_ip(const struct sockaddr *addr);
	short get_sockaddr_port(const struct sockaddr *addr);
	void set_sockaddr_ip(struct sockaddr *addr, int ip);
	void set_sockaddr_port(struct sockaddr *addr, short port);

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
