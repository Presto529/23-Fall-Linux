# Makefile

CC = gcc
CFLAGS = 
OBJS = main.o copy.o
LIBS = 
all : add.out

add.out : $(OBJS)
	$(CC) $(CFLAGS) -o add.out $(OBJS) $(LIBS)

main.o : main.c
	$(CC) $(CFLAGS) -c main.c
copy.o : copy.c
	$(CC) $(CFLAGS) -c copy.c

clean:
	rm -f $(OBJS) add.out *.o core
