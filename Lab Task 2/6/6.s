	.file	"6.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 32
	call	___main
	mov	DWORD PTR [esp+20], 0
	mov	DWORD PTR [esp+28], 0
	mov	DWORD PTR [esp+24], 1
	jmp	L2
L3:
	mov	eax, DWORD PTR [esp+24]
	add	DWORD PTR [esp+28], eax
	add	DWORD PTR [esp+24], 1
L2:
	cmp	DWORD PTR [esp+24], 100
	jle	L3
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
