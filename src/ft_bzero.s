; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 09:59:38 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 09:59:40 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_bzero

section .text

_ft_bzero:
	cmp rdi, 0			; testing if pointer is null
	jz exit				; exit program

main_loop:
	cmp rsi, 0			; if counter is equal to zero
	jle exit			; we end function
	mov byte[rdi], 0	; putting 0
	dec rsi				; decrementing counter
	inc rdi				; incrementing pointer
	jmp main_loop		; looping

exit:
	ret					; quitting
