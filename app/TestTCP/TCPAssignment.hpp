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

class TCPAssignment;

enum class TCPState{
	CLOSED,
	LISTEN,
	SYN_RCVD, //not actually used. create Socket object when connection is established
	SYN_SENT, //active open
	ESTABLISHED, //data transfer state

	/* passive close */
	CLOSE_WAIT, //got FIN
	LAST_ACK, //sent FIN

	/* active close */
	FIN_WAIT_1, //sent FIN
	CLOSING, //got FIN, wait for (FIN)ACK (simultaneous close)
	FIN_WAIT_2, //got (FIN)ACK, wait for FIN
	TIME_WAIT
};

// Socket : open socket's information
class Socket{

public:
	int send_buf_free_length();
	int recv_buf_data_length();

	int send_buf_write(void * buf, uint32_t st, uint32_t ed);
	int send_buf_read(void * buf, uint32_t st, uint32_t ed);
	int recv_buf_write(void * buf, uint32_t st, uint32_t ed);
	int recv_buf_read(void * buf, uint32_t st, uint32_t ed);



	struct sockaddr addr;
	socklen_t addrlen;	
	int is_bound;
	int ack_num; // expected sequence number for this socket to receive
	int seq_num; // next sequence number to send
	int syscallUUID;
	int backlog;
	int pid;
	int sockfd;
	struct sockaddr peer_addr;
	TCPState state;

	std::vector<std::pair<int, int>> establish_list; // pid, fd
	std::vector<std::pair<int, struct sockaddr*>> accept_list; // syscallUUID, &client_addr
	std::vector<struct syn_client> syn_clients;

	int FIN_seq_num;

	int cwnd;

	int estimatedRTT;
	int DevRTT;
	int TimeoutInterval;

	int return_num;

	uint8_t *send_buffer;
	uint8_t *receive_buffer;

	//NOW THESE ARE ALL SEQ#s (32bit)
	uint32_t next_seq_num; // seq# of next byte to be sent (for the first time)
	uint32_t send_base; // seq# of last cumulatively ACKed byte + 1
	uint32_t next_write; // seq# of next byte to be written 
	std::unordered_map<uint32_t ,uint32_t> sent_unACKed_segments;
	//(first seq#, last seq#) for each segment

	uint32_t next_receive; // seq# of next byte to receive orderly
	uint32_t next_read; // seq# of next byte to be read
	std::unordered_map<uint32_t ,uint32_t> received_unordered_segments;
	//(first seq#, last seq#) for each segment

	bool blocked_for_write;
	bool blocked_for_read;


public:
	Socket(int pid, int fd, TCPState state);
	virtual ~Socket();

	static const int BUFFER_SIZE = 51200;
};



struct syn_client{
	int ip;
	short port;
	int ack_num;
	int seq_num;

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

	//PJ3 : constants

	const int MSS = 512;

	//better place helpers here...
	void send_data_packet(Socket* socket, uint32_t st, uint32_t ed);
	int send_maximum(Socket * socket);

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
	virtual void syscall_accept(UUID syscallUUID, int pid, int sockfd, struct sockaddr *client_addr, socklen_t *client_len) final;
	virtual void syscall_read(UUID syscallUUID, int pid, int fd, void *buf, size_t count) final;
	virtual void syscall_write(UUID syscallUUID, int pid, int fd, void *buf, size_t count) final;

	virtual void systemCallback(UUID syscallUUID, int pid, const SystemCallParameter& param) final;
	virtual void packetArrived(std::string fromModule, Packet* packet) final;


	bool confirm_syn_client(Socket* socket, int ip, short port, int sn, int an);
	Socket *find_socket(int src_ip, short src_port, int dst_ip, short dst_port);

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
	void set_sockaddr_family(struct sockaddr *addr);

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
