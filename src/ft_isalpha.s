SECTION .text
    global _ft_isalpha

_ft_isalpha:

    ;create stack frame
    push rbp
    mov rbp, rsp

    mov rbx, rdi                         
    cmp rbx, 64
    jle .l1                                   ; if (rbx <= 64) goto .l1
    cmp rbx, 90
    jle .l2                                   ; if (rbx <= 90) goto .l2

.l1:
    cmp rbx, 96
    jle .l3                                   ; if (rbx <= 96) goto .l3
    cmp rbx, 122
    jg .l3                                    ; if (rbx > 122) goto .l3

.l2:
    mov rax, 1                                 ; return (1)
    jmp .exit

.l3:
    mov rax, 0                                 ; return (0)

.exit:
    ;destroy stack frame
    mov rsp, rbp
    pop rbp
    ret