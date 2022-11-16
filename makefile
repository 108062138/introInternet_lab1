all: compileClient

compileClient: TCP_echo_client.c
	gcc TCP_echo_client.c -o TCP_client.o

clean:
	rm *.o