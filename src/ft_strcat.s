SECTION .text
    global _ft_strcat
    extern _ft_strlen
_ft_strcat:

    ; create stack frame
    push rbp
    mov rbp, rsp

    ; code start here
    push rdi                                ; create a local variable for first arg into the stack
    call _ft_strlen                         ; rax = _ft_strlen(rdi)
    mov r8, rax                             ; r8 = rax
    mov r9, 0                               ; general purpose register
    pop rdi                                 ; get the original value for 

.joinWhileLoop:
    cmp [rsi + r9], byte 0 
    je .exit                                ; if ((*str2) == '\0') goto .exit
    mov r10, [rsi + r9]                     ; r10 = *str2 + j   <=====>   j = r9
    mov [rdi + r8], r10                     ; *str1 + i = r10   <=====>   i = r8
    inc r8                                  ; i++
    inc r9                                  ; j++
    jmp .joinWhileLoop

.exit:
    mov [rdi + r8], byte 0                  ; *str1 + i = '\0'
    mov rax, rdi                            ; return (str1)
    ; destroy stack frame
    mov rsp, rbp
    pop rbp
    ret