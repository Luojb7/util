#ifndef SOCKETSERVER_H_
#define SOCKETSERVER_H_

#include <sys/socket.h>
#include <stdio.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/epoll.h> 
#include <fcntl.h>     
#include <unistd.h>
#include "client.h"
#include "socket.h"

#define MAXEPOLLSIZE 10000
#define MAXLISTENQUEUR 1024

class SocketClient : public Socket, public Client
{
public:
	SocketClient(bool sockType);
	~SocketClient();
	void closeConnection();
	int createConnection();
	void parseConfigFile(char configFile[256]);
	bool isConnected();
	int readBuffer(Frame &);
	int writeBuffer(Frame &);
private:
	bool sockType;
	char ip[256];
	int port;
	int sockfd, epollfd;
	struct sockaddr_in serveraddr;
	struct epoll_event events[MAXEPOLLSIZE];
};
#endif
