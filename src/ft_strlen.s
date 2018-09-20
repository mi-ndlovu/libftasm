SECTION .text
	global _ft_strlen

_ft_strlen:
  	mov   rbx, rdi                            ; store arg pointer to rbx
  	xor   al, al                              ; Zeros out AL which will be used by SCASB to compare bytes from the input string with
  	mov   rcx, 0xffffffff                     ; the highest possible unsigned integer
											  ; This is to avoid REPNE from quitting due to ECX hitting zero before reaching the end of the string
  	repne scasb 							  ; STOSB copies contents of AL to BYTE address given by ES:DI.
  	sub   rdi, rbx                            ; subtract to get length + 1
  	mov   rax, rdi                            ; decrement edi
  	dec rax
  	ret
