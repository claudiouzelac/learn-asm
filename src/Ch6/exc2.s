section .data
a_x dq 0
a_y dq 5

b_x dq 7
b_y dq 3

dist_x dq 0
dist_y dq 0

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
    mov [dist_x], rax
    mov rbx, 1
    mov rcx, 0
    test rax, rax
    cmovz rcx, rbx ; if rax = 0, then set rcx to 1, otherwise rcx = 0

    mov rbx, [a_y]
    sub rbx, [b_y]
    absol rbx
    mov [dist_y], rbx

    mov rdi, rcx
    mov rax, 60
    syscall
