all: compileClient compileServer

compileServer: TCP_echo_server.c UDP_echo_server.c
	gcc TCP_echo_server.c -o TCP_server.o
	gcc UDP_echo_server.c -o UDP_server.o

compileClient: TCP_echo_client.c UDP_echo_client.c
	gcc TCP_echo_client.c -o TCP_client.o
	gcc UDP_echo_client.c -o UDP_client.o

clean:
	rm *.o