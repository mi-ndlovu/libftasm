SECTION .text
    global _ft_isprint

_ft_isprint:
    ;create stack frame
    push rbp
    mov rbp, rsp

    ;code start here
    mov rbx, rdi
    cmp rbx, 32                        
    jle .l2                            ; if (rbx <= 32) goto .l2
    cmp rbx, 126                       
    jg .l2                             ; if (rbx > 126) goto .l2

.l1:
    mov rax, 1                         ; return (1)
    jmp .exit

.l2:
    mov rax, 0                         ; return (0)

.exit:
    mov rsp, rbp
    pop rbp
    ret