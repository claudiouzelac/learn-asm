segment .bss
set resq 10

segment .text
global _start
_start:
    bts qword [set], 4 ; set bit 4
    bts qword [set], 7 ; set bit 7
    bts qword [set], 8 ; set bit 8
    bts qword [set+8], 12 ; set bit 76
    mov rax, 76 ; test bits 4, 76, 77
    mov rbx, rax ; copy bit num to rbx
    shr rbx, 6 ; qword number of set to test
    mov rcx, rax ; copy number of set to test
    and rcx, 0x3F ; extract rightmost 6 bits
    xor rdx, rdx ; set rdx to 0
    bt [set+8*rbx], rcx ; test bit
    setc dl ; edx equals tested bit
    bts [set+8*rbx], rcx ; set bit, insert into set
    btr [set+8*rbx], rcx ; clear bit, remove
    mov rax, 60
    xor rdi, rdi
    syscall
