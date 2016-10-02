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
	inc rax
	mov rdi, rax
	push rax
	push rax
	call _malloc
	cmp rax, 0
	je popcase
	mov rdi, rax
	pop r11
	pop rdx
	pop rsi
	call _ft_memcpy
	ret

popcase:
	pop rax
	pop rdi
	pop rdi
	mov rax, 1

nullcase:
	mov rax, 0
	ret
