section .data
a dw 10
b dw 20
c dw 30
apb dq 0
amb dq 0
apc dq 0
amc dq 0

section .text
global _start
_start:
    mov ax, [a]
    mov bx, [b]
    mov cx, [c]

math:
    mov dx, ax
    add dx, bx
    mov [apb], dx

    mov dx, ax
    sub dx, bx
    movsx rdx, word dx
    mov [amb], rdx

    mov dx, ax
    add dx, cx
    mov [apc], dx

    mov dx, ax
    sub dx, cx
    movsx rdx, word dx
    mov [amc], rdx

exit:
    mov rax, 60
    xor rdi, rdi
    syscall
