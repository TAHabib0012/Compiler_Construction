CC = gcc
CFLAGS = -I.
DEPS = 3make.h
OBJS = 3make.o 3func.o

all:
	gcc -o 3 3.c
	gcc -E 3.c > 3.i 
	gcc -S -masm=intel 3.i
	as -o 3.o 3.s
	objdump -M intel -d 3.o > 3.dump
	gcc -c -o 3.o 3.c
	objdump -M intel -d 3.o > 3c.dump