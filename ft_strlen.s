# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/21 18:15:43 by eteyssed          #+#    #+#              #
#    Updated: 2015/05/21 18:15:44 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_strlen

section	.text

_ft_strlen:
	mov		rax, 0
	cmp		rdi, 0x0
	je		_ret

_string1:
	cmp		byte[rdi], 0x0
	je		_ret
	inc		rdi
	inc		rax
	jmp		_string1

_ret:
	ret
