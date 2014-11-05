segment .data
a dq 246
b dq 328
c dq 410

segment .text
global _start
_start:
    mov rax, [a]
    imul rax     ; Square a
    mov rbx, [b]
    imul rbx, rbx
    mov rcx, [c]
    imul rcx, rcx
    add rax, rbx
    sub rax, rcx
    jnz notrighttri
    xor rdi, rdi
    jmp exit

notrighttri:
    mov rdi, 1
    jmp exit

exit:              ; RDI should be set up!
    mov rax, 60
    syscall
