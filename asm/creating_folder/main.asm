global _start

section .text
_start:
	mov rax, 83
	mov rdi, foldername
	syscall

	xor rax, rax
	xor rdi, rdi
	mov rax, 60
	mov rdi, 1
	syscall
	ret

section .rodata
	foldername: db "Example", 7
