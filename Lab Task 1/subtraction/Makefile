all:
	CC = gcc
	CFLAGS = -I.
	DEPS = subtraction.h
	OBJS = subtraction.o subtraction_func.o

all:
	gcc -o subtraction subtraction.c
	gcc -E subtraction.c > subtraction.i
	gcc -S -masm=intel subtraction.i
	as -o subtraction.o subtraction.s
	objdump -M intel -d subtraction.o > subtraction.dump
	gcc -c -o subtraction.o subtraction.c
	objdump -M intel -d subtraction.o > subtractionc.dump