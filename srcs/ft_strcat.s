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
	mov r11, rdi

pass_rdi:
	cmp byte[rdi], 0
	je append
	inc rdi
	jmp pass_rdi

append:
	cmp byte[rsi], 0
	je end_prog
	mov al, byte[rsi]
	mov byte[rdi], al
	inc rdi
	inc rsi
	jmp append

end_prog:
	mov byte[rdi], 0
	mov rax, r11
	ret
