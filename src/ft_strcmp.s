SECTION .text
    global _ft_strcmp

_ft_strcmp:
    ; create stack frame
    push rbp
    mov rbp, rsp

    mov rcx, 0                                  ; int i = 0
.whileLoop:
    cmp [rdi + rcx], byte 0                     ; if ((*s1 + i) == '\0')
    je .compare
    inc rcx                                     ; i++
    jmp .whileLoop


.compare:
    cld
    repe  cmpsb
    jecxz  .equal                               ;jump when rcx is zero
    mov rax, 1
    jmp .exit

.equal:
    mov rax, 0

.exit:
    ; destroy stack frame
    mov rsp, rbp
    pop rbp
    ret