global _start

section .text
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, length
	syscall

	xor rax, rax
	xor rdi, rdi
	mov rax, 60
	mov rdi, 1
	syscall
	ret

section .rodata
	message: db "Hello", 5
	length: equ $ - message
