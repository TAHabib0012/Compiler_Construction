CC = gcc
CFLAGS = -I.
DEPS = 4make.h
OBJS = 4make.o 4func.o

all:
	gcc -o 4 4.c
	gcc -E 4.c > 4.i 
	gcc -S -masm=intel 4.i
	as -o 4.o 4.s
	objdump -M intel -d 4.o > 4.dump
	gcc -c -o 4.o 4.c
	objdump -M intel -d 4.o > 4c.dump