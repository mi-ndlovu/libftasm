SECTION .text
    global _ft_bzero

_ft_bzero:
    ; create stack frame
    push rbp
    mov rbp, rsp

    ; code start here
    mov rbx, rdi                                  ; save the first argument to register rbx
    mov rcx, 0                                    ; int i = 0 (create a counter)
    
.loop:
    cmp rcx, rsi                                  ; rsi is the second argument
    je .exit                                      ; if (rcx == i) goto .exit
    mov byte [rbx + rcx], byte 0                  ; *rbx + i = '\0'  
    inc rcx                                       ; i++;
    jmp .loop                                     

.exit:
    ; destroy stack frame
    mov rsp, rbp
    pop rbp
    ret