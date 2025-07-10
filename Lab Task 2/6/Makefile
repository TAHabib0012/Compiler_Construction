all:
	gcc -o 6 6.c
	gcc -E 6.c > 6.i 
	gcc -S -masm=intel 6.i
	as -o 6.o 6.s
	objdump -M intel -d 6.o > 6.dump
	gcc -c -o 6.o 6.c
	objdump -M intel -d 6.o > 6c.dump