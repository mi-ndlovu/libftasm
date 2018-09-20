section .data
	printNull: db "(null)", 10
    newLine: db 10

SECTION .text
    global _ft_puts

_ft_puts:
    push rbp
    mov rbp, rsp

    cmp rdi, 0                             ; if (str == 0)  <===>  (rdi = str)
    je .isnull                             ; goto .isnull
    mov rdx, 0                             ; i =  0       <===>  (rdx = i)

.whileLoop:
    cmp [rdi + rdx], byte 0                ; if ((*str + i) == '\0')
    je .write                              ; goto .write
    inc rdx                                ; i++
    jmp .whileLoop

.write:
    mov r10, rdi                          ; save the value of an argument to r10 register
    mov rax, 0x2000004                    ; write system call       
    mov rsi, r10                          ; str to write
    mov rdi, 1                            ; file descriptor
    syscall                               ; write(rdi, rsi, rdx)
    ;write a new line at the end
    mov rax, 0x2000004                    ; write system call
    lea rsi, [rel newLine]                ; address of new line variable
    mov rdx, 1                            ; buf size
    syscall                               ; write(rdi, rsi, rdx)
    mov rsp, rbp                          ; destroy stack frame
    pop rbp
    ret

.isnull:
    mov rax, 0x2000004                   ; write system call          
    mov rdi, 1                           ; file descriptor
    lea rsi, [rel printNull]             ; address of printnull variable
    mov rdx, 7                           ; buf size
    syscall                              ; write(rdi, rsi, rdx)       
    mov rsp, rbp                         ; destroy stack frame
    pop rbp
    ret