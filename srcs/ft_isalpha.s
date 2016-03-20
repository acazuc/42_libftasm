; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isalpha

section .text

_ft_isalpha:
	cmp rdi, 65
	jb nope
	cmp rdi, 122
	ja nope
	cmp rdi, 90
	jbe yep
	cmp rdi, 61
	jae yep
	jmp nope

yep:
	mov rax, 1
	ret

nope:
	mov rax, 0
	ret
