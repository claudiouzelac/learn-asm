segment .data
a dd 4
b dd 4.4
c times 10 dd 0
d dw 1, 2
e db 0xFB
f db "hello world", 0

segment .bss
g resd 1
h resd 10
i resb 100

segment .text
global _start
_start:
    push rbp  ; set up stack frame
    mov rbp, rsp ; rbp points to the stack frame
    sub rsp, 16  ; room for local variables
    xor eax, eax ; rax = 0 for return
    leave        ; undo stack frame changes
    ret
