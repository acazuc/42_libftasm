; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcat

section .text

_ft_strcat:
	mov rax, rdi

pass_rdi:
	cmp byte[rdi], 0
	je append
	add rdi, 1
	jmp pass_rdi

append:
	cmp byte[rsi], 0
	je end_prog
	mov al, byte[rsi]
	mov byte[rdi], al
	add rdi, 1
	add rsi, 1
	jmp append

end_prog:
	mov byte[rdi], 0
	ret
