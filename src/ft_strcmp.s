; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcmp

section .text

_ft_strcmp:
	mov rdx, 0

loop:
	cmp byte[rdi], 0
	je end
	cmp byte[rsi], 0
	je end
	mov al, byte[rsi]
	cmp byte[rdi], al
	jne end
	inc rdi
	inc rsi
	jmp loop

end:
	mov rax, 0
	mov al, byte[rdi]
	sub al, byte[rsi]
	ret
