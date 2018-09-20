NAME = libfts.a
AS = nasm -f macho64
SRC = src/ft_toupper.s src/ft_tolower.s src/ft_isalpha.s src/ft_isdigit.s \
	  src/ft_isprint.s src/ft_isascii.s src/ft_isalnum.s src/ft_bzero.s \
	  src/ft_strcat.s src/ft_strlen.s src/ft_puts.s src/ft_memset.s \
	  src/ft_memcpy.s src/ft_strdup.s src/ft_cat.s \
	  src/ft_abs.s src/ft_strclr.s src/ft_strcpy.s src/ft_strcmp.s \
	  src/ft_putchar.s src/ft_swap.s src/ft_strncpy.s
	  
OBJECT = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJECT)
	@ar rc $(NAME) $(OBJECT)
	@ranlib $(NAME)

clean:
	@rm -rf src/*.o

fclean: clean
	@rm -rf $(NAME)
	@a.out

re: fclean all

run: re
	@gcc main.c -L . -lfts
	@./a.out author