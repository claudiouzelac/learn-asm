section .data
a dq 175
b dq 4097
sum dq 0
diff dq 0

segment .text
global _start
_start:
    mov rax, [a]
    mov rbx, rax
    add rax, [b]
    sub rbx, [b]
    mov [sum], rax
    mov [diff], rbx
    mov rax, 60
    xor rdi, rdi
    syscall
