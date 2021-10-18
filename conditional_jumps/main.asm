global _start

section .text
_start:
    mov rax, 1 ; Copying 1 into RAX
    cmp rax, 1 ; Checking if RAX = 1
    je _win ; If RAX = 1, we will jump to the '_win' label
    call _clear
    call _exit
    ret

_win:
    mov rax, 1
    mov rdi, 1
    mov rsi, string
    mov rdx, length
    syscall

_clear:
    xor rax, rax
    xor rdi, rdi
    xor rsi, rsi
    xor rdx, rdx
    ret

_exit:
    mov rax, 60
    mov rdi, 0
    syscall
    ret

section .rodata
    string: db "You win!", 0x0a, 0x00
    length: equ $ - string