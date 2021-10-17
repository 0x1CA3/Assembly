global _start

section .text
_start:
	call _getpath
	call _display
	call _exit
	ret

_getpath:
	mov rax, 79
	mov rdi, buffer
	mov rsi, 1024
	syscall
	ret

_display:
	mov rax, 1
	mov rdi, 1
	mov rsi, buffer
	mov rdx, 1024
	syscall
	ret

_exit:
	xor rax, rax
	xor rdi, rdi
	xor rsi, rsi
	xor rdx, rdx

	mov rax, 60
	mov rdi, 1
	syscall
	ret

section .bss
	buffer: resb 1024
