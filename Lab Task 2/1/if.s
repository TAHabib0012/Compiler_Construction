	.file	"if.c"
	.intel_syntax noprefix
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "Enter your Target: \0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "Enter your guess: \0"
.LC3:
	.ascii "Too low!\0"
.LC4:
	.ascii "Too high!\0"
	.align 8
.LC5:
	.ascii "Guessed the correct number %d in %d attempts.\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	mov	DWORD PTR -4[rbp], 0
	lea	rax, .LC0[rip]
	mov	rcx, rax
	call	printf
	lea	rax, -8[rbp]
	lea	rcx, .LC1[rip]
	mov	rdx, rax
	call	scanf
	lea	rax, .LC2[rip]
	mov	rcx, rax
	call	printf
	lea	rax, -12[rbp]
	lea	rcx, .LC1[rip]
	mov	rdx, rax
	call	scanf
	add	DWORD PTR -4[rbp], 1
	jmp	.L2
.L5:
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jge	.L3
	lea	rax, .LC3[rip]
	mov	rcx, rax
	call	puts
	jmp	.L4
.L3:
	lea	rax, .LC4[rip]
	mov	rcx, rax
	call	puts
.L4:
	lea	rax, .LC2[rip]
	mov	rcx, rax
	call	printf
	lea	rax, -12[rbp]
	lea	rcx, .LC1[rip]
	mov	rdx, rax
	call	scanf
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	cmp	edx, eax
	jne	.L5
	mov	eax, DWORD PTR -8[rbp]
	mov	edx, DWORD PTR -4[rbp]
	lea	rcx, .LC5[rip]
	mov	r8d, edx
	mov	edx, eax
	call	printf
	mov	eax, 0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 15.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
