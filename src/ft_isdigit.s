SECTION .text
    global _ft_isdigit

_ft_isdigit:
    ;create stack frame
    push rbp
    mov rbp, rsp

    ;code start here
    mov rbx, rdi
    cmp rbx, 48                       ; if (rbx < 48) goto .l2
    jl .l2
    cmp rbx, 57                       ; if (rbx >= 57) goto .l2
    jge .l2

.l1:
    mov rax, 1                         ; return (1)
    jmp .exit

.l2:
    mov rax, 0                         ; return (2)

.exit:
    mov rsp, rbp
    pop rbp
    ret