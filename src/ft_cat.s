section .bss
	buf resb 1024                               	; char buf[1024]   

section .text
	global _ft_cat

_ft_cat:
	; create stack frame
	push rbp
	mov rbp, rsp

	mov r9, rdi                                     ; r9 = rdi (argument one)
.read:
	mov rax, 0X2000003                              ; read system call
	mov rdi, r9                                     ; store file discriptor to RDI register
	lea rsi, [rel buf]                              ; rsi will be equal to buf address                
	mov rdx, 1024                                   ; buf size                   
	syscall                                         ; read (rdi, rsi, rdx)
	jc .exit                                        ; Jump if carry flag is set (C=1)
	mov r8, rax                                     ; r8 = rax (the number of bytes actually read)
	cmp r8, 0										; if (r8 == 0)
	je .exit                                        ; goto .exit

.write:
	mov rax, 0X2000004                              ; write system call
	mov rdi, 1                                      ; file discriptor
	lea rsi, [rel buf]                              ; rsi will be equal to buf address
	mov rdx, 1024                                   ; buf size
	syscall                                         ; write (rdi, rdi, rdx) 
	jmp .read 

.exit:
	;destroy stack frame
	mov rsp, rbp
	pop rbp
	ret