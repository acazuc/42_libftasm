/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/09/27 12:25:31 by acazuc            #+#    #+#             */
/*   Updated: 2016/10/02 15:34:15 by acazuc           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MAIN_H
# define MAIN_H

void	ft_bzero(void *addr, size_t len);
void	ft_cat(int fd);
int		ft_isalnum(int c);
int		ft_isalpha(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);
int		ft_isspace(int c);
void	ft_memcpy(void *dst, void *src, size_t len);
void	ft_memset(void *addr, char c, size_t len);
void	ft_putchar(char c);
void	ft_putchar_fd(char c, int fd);
void	ft_putendl(char *s);
void	ft_putendl_fd(char *s, int fd);
int		ft_puts(char *s);
void	ft_putstr(char *s);
void	ft_putstr_fd(char *s, int fd);
char	*ft_strcat(char *s, char *s1);
char	*ft_strdup(char *s);
int		ft_strlen(char *s);
int		ft_tolower(int c);
int		ft_toupper(int c);
int		ft_swap_int(int i);
long	ft_swap_long(long l);
int		ft_strcmp(char *s1, char *s2);
int		ft_strequ(char *s1, char *s2);
int		ft_strnequ(char *s1, char *s2);

#endif
