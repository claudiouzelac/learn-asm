section .data
gr1 dq 90
gr2 dq 95
gr3 dq 84
gr4 dq 78

avg dq 0
rem dq 0

section .text
global _start
_start:
    mov rax, [gr1]
    add rax, [gr2]
    add rax, [gr3]
    add rax, [gr4]

    mov rbx, 4
    idiv rbx

    mov [avg], rax
    mov [rem], rdx

    mov rax, 60
    xor rdi, rdi
    syscall
