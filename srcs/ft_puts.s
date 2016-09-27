; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 10:17:58 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 10:17:58 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_puts

section .data

LF: db 10
NULL_STR: db "(null)"

section .text

_ft_puts:
	cmp rdi, 0
	je null_case
	mov rsi, rdi
	mov rdx, 0

calc_length:
	cmp byte[rdi], 0
	je print
	inc rdi
	inc rdx
	jmp calc_length

null_case:
	mov rsi, NULL_STR
	mov rdx, 6

print:
	mov rax, 0x2000004
	mov rdi, 1
	syscall
	mov rax, 0x2000004
	mov rdx, 1
	mov rsi, LF
	syscall
	cmp rax, -1
	jne end
	ret

end:
	mov rax, 1
	ret
