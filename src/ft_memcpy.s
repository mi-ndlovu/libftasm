SECTION .text
	global _ft_memcpy

_ft_memcpy:
	; create stack frame
	push rbp
	mov rbp, rsp

	push rdi
	mov rcx, rdx                        ; rcx = n
	; rep => repeat    
	rep movsb                           ; Copy the 8-bit byte from the RSI to the RDI register. until rcx = 0        
	pop rdi                             ; value of rdi will be stored in rax

	mov rsp, rbp
	pop rbp
	ret