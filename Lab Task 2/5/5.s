	.file	"5.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "n is Positive number!\0"
LC2:
	.ascii "n is aNegative number!\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 32
	call	___main
	lea	eax, [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_scanf
	mov	eax, DWORD PTR [esp+28]
	neg	eax
	test	eax, eax
	jns	L2
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_puts
	jmp	L3
L2:
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_puts
L3:
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
