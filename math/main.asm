global _start

section .text
_start:
    mov rax, 1
    mov rbx, 2
    mov rdx, 1
    
    add rax, rbx
    sub rax, rdx
    ret