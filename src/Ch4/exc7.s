section .data
kwh dq  111  ; How many kwh
cost dq 3    ; In cents, how much per kwh

section .text
; rsp is dollars
; rsp + 8 is cents
;
; rax: main
; rbx: initial, multiply by?
; rcx: temp
global _start
_start:
    mov rbx, 500   ; Initial adder value
    mov rax, [kwh]
    mov rcx, [cost]
    mul rcx        ; How much we need to add to initial
    add rax, rbx   ; Add 'em together
    mov rbx, [kwh]
    sub rbx, 1000
    cmp rbx, 0     ; Check if kwh > 1000
    jl skipmult
    mul rbx        ; If it is, multiply full cost by (kwh - 1000)

skipmult:
; Moving into stack
    mov rdx, 0
    mov rcx, 100
    div rcx

    push rax
    push rdx

; Exit
    mov rax, 60
    xor rdi, rdi
    syscall
