SECTION .text
    global _ft_abs

_ft_abs:
    ;create stack frame 
    push rbp
    mov rbp, rsp

    ; doesn't work with 64 bit registers
    mov eax, edi                                    ; store arg 1 to EAX register
    cmp eax, 0                                      ; if (eax >= 0)
    jge .exit                                       ; goto .exit
    neg eax                                         ; return(-eax)

.exit:
    ;destroy stack frame
    mov rsp, rbp
    pop rbp
    ret