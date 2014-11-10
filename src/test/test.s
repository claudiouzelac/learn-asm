section .data
a dq 4

section .text
global _start
_start:
    mov rax, r8
    mov r8, rax

    mov rax, r9
    mov r9, rax

    mov [a], r8
    mov [a], r9
    mov [a], rax
