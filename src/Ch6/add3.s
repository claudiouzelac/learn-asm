segment .data
a dq 151
b dq 310
sum dq 0

segment .text
global _start
_start:
    sub rsp, 16
    mov rax, 9    ; Make rax nine
    add [a], rax  ; add rax to a
    mov rax, [b]  ; move b into rax
    add rax, 10   ; add ten to rax
    add rax, [a]
    mov [sum], rax
    mov rax, 60
    xor rdi, rdi
    syscall
