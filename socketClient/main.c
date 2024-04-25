#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <string.h>
#include <library.h>
#include <unistd.h>
#include <pthread.h>

void listen_and_print(int sock) {
    char buffer[1024];

    while (1)
    {
        ssize_t  received = recv(sock,buffer,1024,0);

        if(received>0)
        {
            buffer[received] = 0;
            printf("%s\n ",buffer);
        }

        if(received==0)
            break;
    }

    close(sock);
}


void send_console_to_server(int sock) {
    char *username = NULL;
    size_t name_size= 0;
    printf("USERNAME: ");
    ssize_t  count = getline(&username,&name_size,stdin);
    username[count-1]=0;


    char *line = NULL;
    size_t line_size= 0;
    printf("[+][+][+][+][+][+][+][+][+][+]\n");
    printf("[+] Type to send a message [+]\n");
    printf("[+] Type exit to exit..... [+]\n");
    printf("[+][+][+][+][+][+][+][+][+][+]\n");

    char buffer[1024];

    while(1)
    {


        ssize_t  charCount = getline(&line,&line_size,stdin);
        line[charCount-1]=0;

        sprintf(buffer,"%s:%s",username,line);

        if(charCount>0)
        {
            if(strcmp(line,"exit")==0)
                break;

            ssize_t amount_sent =  send(sock,buffer,strlen(buffer), 0);
        }
    }
}

void listen_and_print_thread(int sock) {

    pthread_t id;
    pthread_create(&id,NULL,listen_and_print,sock);
}

int main() {

    int sock = createSocket();
    struct sockaddr_in *address = createAddress("127.0.0.1", 2000);


    int result = connect(sock,address,sizeof (*address));

    if(result == 0)
        printf("connection was successful\n");

    listen_and_print_thread(sock);

    send_console_to_server(sock);

    close(sock);

    return 0;
}
