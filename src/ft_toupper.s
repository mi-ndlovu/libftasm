section .text
	global _ft_toupper              ; make _ft_toupper available externally

_ft_toupper:

	;create stack frame
	push rbp                       ; save the callers[os] frame pointer
	mov rbp, rsp                   ; create the new frame pointer

	; code start here
	mov rax, rdi                   ; store first argument to register rax
	cmp rax, 97
	jl .exit                       ; if (rax < 97) goto .exit
	cmp rax, 122
	jg .exit                       ; if (rax > 122) goto .exit
	sub rax, 32                    ; arg = arg - 32

.exit:
	;destroy stack frame
	mov rsp, rbp                   ; restore stack pointer 
    pop rbp                        ; restore callers stack pointer
    ret                            ; return to caller