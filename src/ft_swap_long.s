; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_swap_long.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/03/20 09:59:38 by acazuc            #+#    #+#              ;
;    Updated: 2016/03/20 09:59:40 by acazuc           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_swap_long

section .text

_ft_swap_long:
	bswap rdi
	ret