; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putendl_fd.s                                    :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_putendl_fd

extern _ft_putstr_fd
extern _ft_putchar_fd

section .text

_ft_putendl_fd:
	cmp rdi, 0
	je nullcase
	push rsi
	call _ft_putstr_fd
	pop rsi
	mov rdi, 10
	call _ft_putchar_fd

nullcase:
	ret
