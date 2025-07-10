
all:
	CC = gcc
	CFLAGS = -I.
	DEPS = multiplication.h
	OBJS = multiplication.o multiplication_func.o

all:
	gcc -o multiplication multiplication.c
	gcc -E multiplication.c > multiplication.i
	gcc -S -masm=intel multiplication.i
	as -o multiplication.o multiplication.s
	objdump -M intel -d multiplication.o > multiplication.dump
	gcc -c -o multiplication.o multiplication.c
	objdump -M intel -d multiplication.o > multiplicationc.dump