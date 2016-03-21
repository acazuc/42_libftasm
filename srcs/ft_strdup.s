; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_memcpy

section .text

_ft_strdup:
	cmp rdi, 0
	je nullcase
	push rdi
	call _ft_strlen
	push rax
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je nullcase
	pop rdx
	pop rsi
	mov rdi, rax
	call _ft_memcpy
	ret

nullcase:
	mov rax, 0
	ret
