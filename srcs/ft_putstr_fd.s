; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr_fd.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_putstr_fd

extern _ft_strlen

section .data

NULL_STR db "(null)"

section .text

_ft_putstr_fd:
	cmp rdi, 0
	je nullcase
	push rdi
	push rsi
	call _ft_strlen
	mov rdx, rax
	mov rax, 0x2000004
	pop rdi
	pop rsi
	syscall
	ret

nullcase:
	mov rdi, rsi
	lea rsi, [rel NULL_STR]
	mov rdx, 6
	mov rax, 0x2000004
	syscall
	ret
