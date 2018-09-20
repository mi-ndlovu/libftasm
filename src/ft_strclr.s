SECTION .text
    global _ft_strclr

_ft_strclr:
    ; create stack frame
    push rbp
    mov rbp, rsp
    mov rcx, 0                                   ; int i = 0

.whileLoop:
    cmp [rdi + rcx], byte 0                      ; if ((*str + i) == '\0') { 
    je .exit                                     ; goto .exit }
    mov [rdi + rcx], byte 0                      ; *str + i = '\0'
    inc rcx                                      ; i++
    jmp .whileLoop

.exit:
    ; destroy stck frame 
    mov rsp, rbp
    pop rbp
    ret