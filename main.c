#include "libasm.h"

int main(int ac, char **av) {

    int fd;
	
	(void)ac;

    printf("\n=============== ft_toupper ==============\n");
    printf("  (1) ft_toupper(a) => %c\n", ft_toupper('a'));
    printf("  (2) ft_toupper(b) => %c\n", ft_toupper('b'));
    printf("  (3) ft_toupper(c) => %c\n", ft_toupper('c'));

    printf("============== ft_tolower ===============\n");
    printf("  (1) ft_tolower(A) => %c\n", ft_tolower('A'));
    printf("  (2) ft_tolower(B) => %c\n", ft_tolower('B'));
    printf("  (3) ft_tolower(C) => %c\n", ft_tolower('C'));

    printf("============= ft_isalpha ================\n");
    printf("  (1) isalpha 5 => %d\n", ft_isalpha('5'));
    printf("  (2) isalpha G => %d\n", ft_isalpha('G'));
    printf("  (3) isalpha . => %d\n", ft_isalpha('.'));

    printf("=============== ft_isdigit ===============\n");
    printf("  (1) isdigit 4 => %d\n", ft_isdigit('4'));
    printf("  (2) isdigit g => %d\n", ft_isdigit('g'));
    printf("  (3) isdigit . => %d\n", ft_isdigit('.'));

    printf("============== ft_isprint ================\n");
    printf("  (1) isprint 4 => %d\n", ft_isprint('4'));
    printf("  (2) isprint g => %d\n", ft_isprint('g'));
    printf("  (3) isprint \' \' => %d\n", ft_isprint(' '));

    printf("============= ft_isascii =================\n");
    printf("  (1) isascii 4 => %d\n", ft_isascii('4'));
    printf("  (2) isascii g => %d\n", ft_isascii('g'));
    printf("  (3) isascii \' \' => %d\n", ft_isascii(' '));

    printf("=============== ft_isalnum ===============\n");
    printf("  (1) isalnum 4 => %d\n", ft_isalnum('4'));
    printf("  (2) isalnum g => %d\n", ft_isalnum('g'));
    printf("  (3) isalnum \' \' => %d\n", ft_isalnum(' '));

 
    printf("=============== ft_bzero ================\n");
    char * name = "mbongeni";
    ft_bzero(&name, 0);
    printf("  (1) bzero(&name, 0) => %s\n", name);
    ft_bzero(&name, 5);
    printf("  (2) bzero(&name, 5) => %s\n", name);

    printf("================ ft_strcat ==============\n");
    char src[50], dest[50];
    strcpy(dest,  "Mbongeni");
   	strcpy(src, "Ndlovu");
    ft_strcat(dest, src);
    printf("  (1) strcat(Mbongeni, Ndlovu) => %s\n", dest);

    printf("=============== ft_strlen ===============\n");
    int len = ft_strlen("123456789");
    printf(" (1) strlen(123456789) => %d\n", len);


    printf("=============== ft_puts =================\n");
    char dest2[50];
    strcpy(dest2,  "Mbongeni");
    ft_puts(0);
    ft_puts(dest2);

    printf("============= ft_memset =================\n");
	char str[50];
   	strcpy(str,"Mbongeni Ndlovu");
   	puts(str);
   	ft_memset(str,'*', 6);
  	puts(str);

    printf("=============== ft_memcpy ===============\n");
    const char src1[50] = "Mbongeni Ndlovu";
   	char dest1[50];
   	strcpy(dest1,"wethinkcode");
    printf(" (1) memcpy dest before = %s\n", dest1);
  	ft_memcpy(dest1, src1, 10);
  	printf(" (2) memcpy dest after = %s\n", dest1);

    printf("============== ft_strdup ================\n");
    char *strd1 = "Mbongeni Ndlovu";
    char *strd2;
    printf(" (1) ft_strdup(Mbongeni Ndlovu)\n");
    strd2 = ft_strdup(strd1);
    printf(" (2) Duplicated string is : %s\n", strd2);

    printf("================ ft_cat =================\n");
    fd = open(av[1], O_RDONLY);
	ft_cat(fd);
    printf("\n");
	close(fd);

    printf("=========== ft_abs (Bonus) ==============\n");
    int one = ft_abs(10);
    int two = ft_abs(-10);
    printf(" (1) abs(10) = %d \n", one);
    printf(" (2) abs(-10) = %d\n", two);

    printf("=========== ft_strclr (Bonus) ===========\n");
    char b[10] = "mbongeni";
    printf(" (1) str = %s\n", b);
    ft_strclr(b);
    printf(" (2) str = %s\n", b);

    printf("=========== ft_strcpy (Bonus) ===========\n");
    char d[20];
    ft_strcpy(d, "mbongeni");
    printf(" (1) ft_strcpy(dest, mbongeni)\n");
    printf(" (2) dest = %s \n", d);

    printf("=========== ft_strcmp (Bonus) ===========\n");
    char s1[10] = "mbongeni";
    char s2[10] = "ndlovu";
    int f = ft_strcmp(s1,s2);
    int f2 = ft_strcmp(s1,s1);
    printf(" (1) cmp(mbongeni, ndlovu) = %d\n", f); 
    printf(" (2) cmp(mbongeni, mbongeni) = %d\n", f2);

    printf("=========== ft_putchar (Bonus) ==========\n");
    ft_putchar('\t');
    ft_putchar('A');
    ft_putchar('\n');
    ft_putchar('\t');
    ft_putchar('B');
    ft_putchar('\n');

    printf("=========== ft_swap (Bonus) =============\n");
    int a = 10 ; int n = 5; 
    ft_swap(&a, &n);
    printf(" (1) a = 10 after a = %d\n", a);
    printf(" (2) n = 5 after n = %d\n", n);

    printf("=========== ft_strncpy (Bonus) ===========\n");
    char n1[20];
    char n2[20] = "mbongeniNdlovu";
    printf(" (1) ft_strncpy(dest,mbongeniNdlovu, 10)\n");
    ft_strncpy(n1, n2, 10);
    printf(" (2) dest = %s\n", n1);

    printf("================= (END) ===================\n");
    return (0);
}