section .data
a_x dq 0
a_y dq 5

b_x dq 7
b_y dq 3

dist2 dq 0

%macro absol 1

    test %1, %1
    jns %%skip
    neg %1
    %%skip:

%endmacro

section .text
global _start
_start:
    mov rax, [a_x]
    sub rax, [b_x]
    absol rax

    mov rbx, [a_y]
    sub rbx, [b_y]
    absol rbx

    add rax, rax
    add rbx, rbx

    add rax, rbx
    mov [dist2], rax

    mov rax, 60
    xor rdi, rdi
    syscall
