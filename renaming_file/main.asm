global _start

section .text
_start:
    call _display_message_one
    call _clear
    call _input_one
    call _clear
    call _display_message_two
    call _clear
    call _input_two
    call _rename
    call _clear
    call _exit
    ret

_rename:
    mov rax, 82
    mov rdi, buffer_one
    mov rsi, buffer_two
    syscall
    ret

_input_one:
    mov rax, 0
    mov rdi, 1
    mov rsi, buffer_one
    mov rdx, 128
    mov rcx, 0
    syscall
    ret
    
_input_two:
    mov rax, 0
    mov rdi, 1
    mov rsi, buffer_two
    mov rdx, 128
    mov rcx, 0
    syscall
    ret

_display_message_one:
    mov rax, 1
    mov rdi, 1
    mov rsi, message_one
    mov rdx, length_one
    syscall
    ret

_display_message_two:
    mov rax, 1
    mov rdi, 1
    mov rsi, message_two
    mov rdx, length_two
    syscall
    ret

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

section .bss
    buffer_one: resb 128
    buffer_two: resb 128

section .rodata
    message_one: db "Enter the name of the file you want to rename: ", 0x0a, 0x00
    message_two: db "Enter the new name: ", 0x0a, 0x00
    length_one: equ $ - message_one
    length_two: equ $ - message_two