; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                        :+:      :+:    :+:    ;
;                                                    +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isalnum

section .text

_ft_isalnum:
	cmp rdi, 48
	jb nope
	cmp rdi, 57
	jbe yep
	cmp rdi, 65
	jb nope
	cmp rdi, 90
	jbe yep
	cmp rdi, 97
	jb nope
	cmp rdi, 122
	jbe yep
	jmp nope

yep:
	mov rax, 1
	ret

nope:
	mov rax, 0
	ret
