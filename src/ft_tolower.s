SECTION .text
    global _ft_tolower

_ft_tolower:

    ;create stack frame
    push rbp                                
    mov rbp, rsp

    ; code start here
    mov rax, rdi                          ; store argument one to rdi
    cmp rax, 65                           
    jl .exit                              ; if (rax < 65) goto .exit
    cmp rax, 90
    jg .exit                              ; if (rax > 90) goto .exit
    add rax, 32                           ; rax = rax + 32

.exit:
    ;destroy stack frame
    mov rsp, rbp
    pop rbp
    ret
