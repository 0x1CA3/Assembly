global _start

section .text
_start:
example:
	mov rax, 1
	mov rdi, 1
	mov rsi, string
	mov rdx, length
	syscall
	cmp rax, 1
	call _clear
	je example

_clear:
	xor rax, rax
	xor rdi, rdi
	xor rsi, rsi
	xor rdx, rdx
	ret

section .data
	string: db "This will go on forever...", 0x0a, 0x00
	length: equ $ - string
