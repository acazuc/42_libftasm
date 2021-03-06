; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_memcpy

section .text

_ft_memcpy:
	mov rax, rdi
	cmp rdi, 0
	je nullcase
	cmp rsi, 0
	je nullcase
	mov rcx, rdx
	cld
	rep movsb
	ret

nullcase:
	mov rax, 0
	ret
