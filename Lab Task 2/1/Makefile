CC = gcc
CFLAGS = -I.
DEPS = ifmake.h
OBJS = ifmake.o iffunc.o

all:
	gcc -o if if.c
	gcc -E if.c > if.i 
	gcc -S -masm=intel if.i
	as -o if.o if.s
	objdump -M intel -d if.o > if.dump
	gcc -c -o if.o if.c
	objdump -M intel -d if.o > if2.dump