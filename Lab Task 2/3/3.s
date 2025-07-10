	.file	"3.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "Too low!\0"
LC2:
	.ascii "Too high!\0"
LC3:
	.ascii "perfect!\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 32
	call	___main
	mov	DWORD PTR [esp+28], 0
	lea	eax, [esp+24]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_scanf
	lea	eax, [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_scanf
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	cmp	edx, eax
	jge	L2
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_puts
	jmp	L3
L2:
	mov	edx, DWORD PTR [esp+20]
	mov	eax, DWORD PTR [esp+24]
	cmp	edx, eax
	jle	L4
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_puts
	jmp	L3
L4:
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_puts
L3:
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
