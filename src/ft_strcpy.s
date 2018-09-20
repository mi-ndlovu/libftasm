
SECTION .text
    global _ft_strcpy

_ft_strcpy:
    ; create stack frame
    push rbp
    mov rbp, rsp
    mov rcx, 0                                  ; int i = 0
.whileLoop:
    cmp [rsi + rcx], byte 0                     ; if ((*str + i) == '\0')
    je .copy
    inc rcx                                     ; i++
    jmp .whileLoop

.copy:
    inc rcx                                     ; for '\0'
    cld                                         ; set direction flag forward
    rep movsb                                   ; repeat copying bytes from RSI to RDI until rcx = 0
    mov rsp, rbp
    pop rbp
    ret