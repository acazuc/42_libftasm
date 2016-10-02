/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/03/21 12:58:12 by acazuc            #+#    #+#             */
/*   Updated: 2016/10/02 14:25:48 by acazuc           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include "main.h"

void	ft_putnbr(int n)
{
	if (n < 0)
	{
		ft_putchar('-');
		n = -n;
	}
	if (n > 9)
	{
		ft_putnbr(n / 10);
		ft_putnbr(n % 10);
	}
	else
		ft_putchar('0' + n);
}

void	test2()
{
	char	a[10];

	ft_putnbr(ft_isprint('a'));
	ft_putnbr(ft_isprint('\0'));
	ft_putchar('\n');
	ft_memcpy(a, "123456789", 10);
	ft_putstr(a);
	ft_memset(a, 0, 10);
	ft_putstr(a);
	ft_putchar('\n');
	ft_putchar_fd('a', 2);
	ft_putchar('\n');
	ft_putendl("test");
	ft_putendl_fd("test", 2);
	ft_putendl(NULL);
	ft_puts("test");
	ft_puts(NULL);
	ft_putstr("test");
	ft_putchar('\n');
	ft_putstr_fd("test", 2);
	ft_putchar('\n');
	ft_putendl(ft_strcat(a, "cat1"));
	ft_putendl(ft_strcat(a, "cat2"));
	ft_putendl(ft_strdup("dup"));
	ft_putnbr(ft_strlen("1234"));
	ft_putchar('\n');
	ft_putchar(ft_tolower('A'));
	ft_putchar(ft_tolower('1'));
	ft_putchar(ft_toupper('a'));
	ft_putchar(ft_toupper('1'));
	ft_putchar('\n');
}

int		main(void)
{
	int		a;

	a = 1;
	ft_bzero(&a, sizeof(a));
	ft_putnbr(a);
	ft_putchar('\n');
	a = open("main.c", O_RDONLY);
	if (a == -1)
		return (0);
	ft_cat(a);
	close(a);
	ft_putnbr(ft_isalnum('1'));
	ft_putnbr(ft_isalnum('\n'));
	ft_putchar('\n');
	ft_putnbr(ft_isalpha('a'));
	ft_putnbr(ft_isalpha('1'));
	ft_putchar('\n');
	ft_putnbr(ft_isascii('a'));
	ft_putnbr(ft_isascii(257));
	ft_putchar('\n');
	ft_putnbr(ft_isdigit('0'));
	ft_putnbr(ft_isdigit('a'));
	ft_putchar('\n');
	test2();
}
