SECTION .text
    global _ft_swap

_ft_swap:
    push rbp
    mov rbp, rsp

    push rdi
    mov rdi, rsi
    pop rsi

    mov rsp, rbp
    pop rbp
    ret