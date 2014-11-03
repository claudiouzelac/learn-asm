;   exit
;
;   Executes exit system call
;
;   Input:
;
;   Output: 
;       Exit status: 0
;

segment .text
global _start
_start:
    mov eax, 60  ; 60 is the exit syscall
    mov edi, 0   ; Return 0
    syscall      ; Kernel interrupt
    end
