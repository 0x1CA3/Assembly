global _start

section .text
_start:
	call _message
	ret

_message:
	mov rax, 1
	mov rdi, 1
	mov rsi, string
	mov rdx, length
	syscall

	xor rax, rax
	xor rdi, rdi
	xor rsi, rsi
	xor rdx, rdx

	mov rax, 60
	mov rdi, 0
	syscall
	ret

section .rodata
	string: db "we called our label!", 20
	length: equ $ - string
