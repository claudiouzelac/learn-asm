segment .text
global _start
_start:
    mov rax, 0x12345678
    shr rax, 8 ; Want bits 8-15
    and rax, 0xff ; rax now holds 0x56
    nop ; take a little break (debugging)
    mov rax, 0x12345678 ; replacing bits 8-15
    mov rdx, 0xaa ; rdx holds replacement
    mov rbx, 0xff ; need an 8 bit mask
    shl rbx, 8 ; shift mask to align with bit 8
    not rbx ; invert it
    and rax, rbx ; mask it (rax[8-15] all zero)
    shl rdx, 8 ; shift bits to align
    or rax, rdx ; rax now is 0x1234aa78
    mov rax, 60
    xor rdi, rdi
    syscall
