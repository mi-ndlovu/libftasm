
SECTION .text
    global _ft_putchar
    extern _write

_ft_putchar:

        ; create stack frame
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16                                   ; create space for local variables
        mov     eax, edi                                  ; store argument to EAX register 
        mov     BYTE  [rbp-4], al                         ; store 8 bytes of EAX to a local varible
        lea     rax, [rbp-4]                              ; store the address of the local variable to RAX register
        mov     edx, 1                                    ; buf size
        mov     rsi, rax                                  ; address of a local variable
        mov     edi, 1                                    ; file discriptor
        call    _write                                    ; write (edi, rsi, edx)
        ; destroy stack pointer
        mov rsp, rbp
        pop rbp
        ret

