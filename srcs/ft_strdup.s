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
extern _ft_memset

section .text

_ft_strdup:
	cmp rdi, 0
	je nullcase
	call _ft_strlen
	mov r11, rdi
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je nullcase
	mov rdi, rcx
	mov rdi, r11
	call _ft_memset
	ret

nullcase:
	mov rax, 0
	ret
