segment .data
x dq 400 ; dividend
y dq 16 ; divisor
quot dq 0 ; quotient
rem dq 0 ; remainder

segment .text
global _start
_start:
    mov rax, [x] ; move x into rax
    idiv qword [y] ; divide x by y
    mov [quot], rax ; save quotient
    mov [rem], rdx ; save remainder
    mov rax, 60
    xor rdi, rdi
    syscall
