segment .data
a dq 175
b dq 4097

segment .text
global _start
_start:
    mov rax, a
    mov rbx, [a]
    add rbx, [b]
    mov rax, 60 ; exit
    xor rdi, rdi
    syscall
