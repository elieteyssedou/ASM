# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/21 18:06:50 by eteyssed          #+#    #+#              #
#    Updated: 2015/05/21 18:06:51 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_strcat

section	.text

_ft_strcat:
	push	rdi
	cmp		rsi, 0x0
	je		_ret

_string1:
	cmp		byte[rdi], 0x0
	je		_string2
	inc		rdi
	jmp		_string1

_string2:
	cmp		byte[rsi], 0x0
	je		_ret
	movsb
	jmp		_string2

_ret:
	pop		rax
	ret
