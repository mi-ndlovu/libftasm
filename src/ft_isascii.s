SECTION .text
    global _ft_isascii

_ft_isascii:
    ; create stack frame
    push rbp
    mov rbp, rsp

    ; code start here
    mov rbx, rdi
    cmp rbx, 0
    jl .l2
    cmp rbx, 127
    jg .l2

.l1:
    mov rax, 1                                 ; return (1)
    jmp .exit

.l2:
    mov rax, 0                                 ; return (0)   

.exit:
    mov rsp, rbp
    pop rbp
    ret