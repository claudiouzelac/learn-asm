segment .text
global _start
_start:
    mov rax, 0x12345678 ; Initial value for rax
    ror rax, 8 ; preserve rax[0-7]
    shr rax, 4 ; shift out original 11-8
    shl rax, 4 ; bits 3-0 are 0s
    or rax, 1010b ; set the field to 1010b
    rol rax, 8 ; bring back rax[0-7]
    
    mov rax, 60
    xor rdi, rdi
    syscall
