LIBS=-lm -lpthread
OBJS=main.o error.o
main:$(OBJS)
	gcc -g -Wall $(OBJS) -o main $(LIBS)
main.o:main.c
	gcc -g -Wall -c main.c -o main.o
error.o:error.c
	gcc -g -Wall -c error.c -o error.o
clean:
	rm -vrf $(OBJS)
