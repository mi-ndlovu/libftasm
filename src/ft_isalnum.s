SECTION .text
    global _ft_isalnum

_ft_isalnum:

    ; create stack frame
    push rbp
    mov rbp, rsp

    ; code start here
    mov rbx, rdi
    cmp rbx, 48                                   
    jl .l1                                              ; if (rbx < 48) goto .l1
    cmp rbx, 57
    jle .l3                                             ; if (rbx <= 57) goto .l3

.l1:
    cmp rbx, 65
    jl .l2                                              ; if (rbx < 65) goto .l2
    cmp rbx, 90
    jle .l3                                             ; if (rbx <= 90) goto .l3

.l2:
    cmp rbx, 97
    jl .l4                                              ; if (rbx < 97) goto .l4
    cmp rbx, 122
    jg .l4                                             ; if (rbx <= 122) goto .l4


.l3:
    mov rax, 1                                          ; return (1)
    jmp .exit

.l4:
    mov rax, 0                                          ; return (0)

.exit:
    ;destroy stack frame
    mov rsp, rsp
    pop rbp
    ret