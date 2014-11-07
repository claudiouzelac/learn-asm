section .data
a dq 10
b dq 10

section .text
global _start
_start:
    mov qword [a], 1
    mov rax, 1
    mov rbx, 1
