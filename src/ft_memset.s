SECTION .text
	global _ft_memset

_ft_memset:
	push rdi
	mov rax, rsi                     ; store second argument to RAX register
	mov rcx, rdx				     ; store third argument (len) to RCX (counter register)
	cld                              ; set direction flag forward
	rep stosb                        ; copy the value stored in RAX into the location pointed by RDI, repeat.
	pop rdi                          ; value of rdi will be stored in rax
	ret 