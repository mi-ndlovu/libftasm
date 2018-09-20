#ifndef LIBASM_H
# define LIBASM_H

#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdio.h>

int     ft_toupper(int c);
int     ft_tolower(int c);
int     ft_isalpha(int c);
int	    ft_isdigit(int c);
int	    ft_isprint(int c);
int		ft_isascii(int c);
int     ft_isalnum(int c);

void        ft_bzero(void *s, size_t n);
char        *ft_strcat(char *s1, const char *s2);
size_t		ft_strlen(const char *s);
int         ft_puts(const char *s);
void        *ft_memset(void *b, int c, size_t len);
void        *ft_memcpy(void *restrict dst1, const void *restrict src1, size_t n);
char        *ft_strdup(const char *s1);
void        ft_cat(int fd);
/**
*  Extra Functions
*/
void	ft_putchar(char c);
int		ft_abs(int n);
void	ft_strclr(char *s);
char	*ft_strcpy(char *dst, const char *src);
void    ft_swap(int *s1, int *s2);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strncpy(char *dst, const char *src, size_t len);

# endif