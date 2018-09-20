section .text
	extern _malloc                               ; include _malloc
	extern _ft_strlen                            ; include _ft_strcat
	extern _ft_strcat                            ; include _ft_strdup
	global _ft_strdup

_ft_strdup:

	push rdi                                     ; push first argument to the stack
	call _ft_strlen                              ; rax = ft_strlen(rdi)
	mov rdi, rax                                 ; rdi = rax  
	inc rdi                                      ; rdi++
	call _malloc                                 ; rax = malloc(rdi)
	mov rdi, rax                                 ; rdi = rax
	pop rsi                                      
	call _ft_strcat                              ; rax = ft_strcat(rdi, rsi)
	ret                                          ; return (rax)
