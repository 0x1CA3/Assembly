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
	xor rdx, rdx

	mov rax, 0
	mov rdi, 1
	mov rsi, buffer
	mov rdx, 64
	mov rcx, 0
	syscall

	xor rax, rax
	xor rdi, rdi
	xor rsi, rsi
	xor rdx, rdx
	xor rcx, rcx

	mov rax, 1
	mov rdi, 1
	mov rsi, buffer
	mov rdx, 64
	syscall

	xor rax, rax
	xor rdi, rdi
	xor rdx, rdx
	mov rax, 60
	mov rdi, 1
	syscall
	ret

section .bss
	buffer: resb 64

section .rodata
	message: db "Enter a string: ", 15
	length:  equ $ - message
