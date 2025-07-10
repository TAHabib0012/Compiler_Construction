CC = gcc
CFLAGS = -I.
DEPS = 5make.h
OBJS = 5make.o 5func.o

all:
	gcc -o 5 5.c
	gcc -E 5.c > 5.i 
	gcc -S -masm=intel 5.i
	as -o 5.o 5.s
	objdump -M intel -d 5.o > 5.dump
	gcc -c -o 5.o 5.c
	objdump -M intel -d 5.o > 5c.dump