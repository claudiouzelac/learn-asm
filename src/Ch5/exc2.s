section .data
i8 db 1
i16 dw -2
i32 dd 3
i64 dq -4

segment .text
global _start
_start:
    movsx rax, byte [i8]
    movsx rbx, word [i16]
    movsxd rcx, dword [i32]
    mov rdx, [i64]
    add rax, rbx
    add rax, rcx
    add rax, rdx

exit:
    mov rax, 60
    xor rdi, rdi
    syscall
