section .data
pa dq 4097
pb dq 0x50
na dq -10
nb dq -175

segment .text
global _start
_start:
    mov rax, [pa]
    mov rbx, [pb]
    mov rcx, [na]
    mov rdx, [nb]
    add rax, rbx
    add rax, rcx
    add rax, rdx

exit:
    mov rax, 60
    xor rdi, rdi
    syscall
