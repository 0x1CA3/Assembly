global main
extern malloc

section .text
main:
    mov rdi, 32h
    call malloc
    call _clear
    call _exit
    ret

_clear:
    xor rdi, rdi
    ret

_exit:
    mov rax, 60
    mov rdi, 0
    syscall
    ret