CC = gcc
CFLAGS := -m64 
x86_32 = no

ifeq ($(x86_32),yes)
	CFLAGS := -m32
endif

PHONY:all
all:
	$(CC) $(CFLAGS) -c main.c -o main.o
	$(CC) main.o -o main

clean:
	rm *.exe *.o