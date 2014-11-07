section .data
a dq 10
b dq 10

section .text
global _start
_start:
    cmovz rax, rax
    cmovs rax, rax

    cmovz rbx, rbx
    cmovs rbx, rbx
