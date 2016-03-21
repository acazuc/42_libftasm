; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_cat

extern _malloc
extern _write

section .text

_ft_cat:
	mov rdi, 10
	call _malloc
	push rdi
	mov rax, 0x2000003
	mov rdi, 
	mov rdi, 1
	mov rsi, 


nullcase:
	mov rax, 0
	ret
