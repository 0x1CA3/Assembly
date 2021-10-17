global main

extern puts
extern exit

section .text
main:
	mov rdi, string
	call puts
	call _leave
	ret

_leave:
	xor rdi, rdi
	mov rdi, 1
	call exit
	ret

section .data
	string: db "Hello!", 0x0a, 0x00
