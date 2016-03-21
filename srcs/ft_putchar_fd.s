; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putchar_fd.s                                    :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_putchar_fd

section .text

_ft_putchar_fd:
	mov rax, 0x2000004
	mov r11, rsi
	push rdi
	mov rsi, rsp
	mov rdi, r11
	mov rdx, 1
	syscall
	pop rdi
	ret
