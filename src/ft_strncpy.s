SECTION .text
    global _ft_strncpy

_ft_strncpy:
    push rbp
    mov rbp, rsp

    mov rcx, rdx                     ; rcx = len (third argument)
    rep movsb                        ; repeat copying bytes from ESI to EDI until ecx = 0
    
    mov rsp, rbp
    pop rbp
    ret