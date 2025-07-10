CC = gcc
CFLAGS = -I.
DEPS = 2make.h
OBJS = 2make.o 2func.o

all:
	gcc -o 2 2.c
	gcc -E 2.c > 2.i 
	gcc -S -masm=intel 2.i
	as -o 2.o 2.s
	objdump -M intel -d 2.o > 2.dump
	gcc -c -o 2.o 2.c
	objdump -M intel -d 2.o > 2c.dump