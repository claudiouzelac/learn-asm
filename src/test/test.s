section .data
a dq 10

section .text
global _start
_start:
    idiv rax, rax
    idiv rax, rbx
