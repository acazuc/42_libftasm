; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen

section .text

_ft_strlen:
	mov rcx, -1	; init counter at max value (scab make it decrement)
	mov al, 0	; search for \0
	cld			; incrementing pointer
	repne scasb	; executing cpu loop
	not rcx		; scasb decremented rcx, so inverting it do change the value like it has been incremented from 0
	dec rcx		; decrement because \0 need to return 0 but it has been incremented of 1
	mov rax, rcx
	ret
