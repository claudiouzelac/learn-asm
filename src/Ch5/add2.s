section .data
a dq 175
b dq 4097
sum dq 0

segment .text
global _start
_start:
    mov rax, [a]
    add rax, [b]
    mov [sum], rax
    mov rax, 60
    xor rdi, rdi
    syscall
