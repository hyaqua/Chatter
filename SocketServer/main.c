#include <stdbool.h>

#include "library.h"
#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <string.h>

struct client_socket {
    int sockFD;
    struct sockaddr_in address;
    int error;
    bool success;
};

struct client_socket sockets[10];
int socketCount;

struct client_socket * accept_client(int serverSocketFD) {
    struct sockaddr_in clientAddress;
    int client_adr_size = sizeof(struct sockaddr_in);
    int client_sock = accept(serverSocketFD, &clientAddress, &client_adr_size);

    struct client_socket* ret = malloc(sizeof(struct client_socket));
    ret->address = clientAddress;
    ret->sockFD = client_sock;
    ret->success = client_sock>0;
    if(ret->success) {
        ret->error = client_sock;
    }
    return ret;
}

void send_message(char * str, int sock) {
    for(int i = 0; i < socketCount; i++) {
        if(sockets[i].sockFD != sock) {
            send(sockets[i].sockFD, str, strlen(str), 0);
        }
    }
}

void receive_msg(int sock) {
    char buff[1024];

    while(1) {
        ssize_t amount = recv(sock, buff, 1024, 0);
        if(amount <= 0) {
            break;
        }
        buff[amount] = 0;
        printf("%s\n", buff);
        send_message(buff, sock);
    }

    close(sock);
}

void receive_msg_threaded(struct client_socket* sock) {
    pthread_t id;
    pthread_create(&id,NULL,receive_msg,sock->sockFD);
}

void start_accepting_connections(int server_sock) {
    while (1) {
        struct client_socket* sock = accept_client(server_sock);
        sockets[socketCount++] = *sock;
        receive_msg_threaded(sock);
    }
}

int main() {
    int serverSocketFD = createSocket();
    struct sockaddr_in *serverAddress = createAddress("",2000);

    int res = bind(serverSocketFD, serverAddress, sizeof(*serverAddress));
    if(res == 0) {
        printf("Socket was bound successfully\n");
    }

    int listener = listen(serverSocketFD, 10);

    start_accepting_connections(serverSocketFD);

    shutdown(serverSocketFD, SHUT_RDWR);

    return 0;
}
