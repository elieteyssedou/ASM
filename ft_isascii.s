# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/31 16:19:57 by eteyssed          #+#    #+#              #
#    Updated: 2015/03/31 16:19:58 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_isascii

section .text

_ft_isascii:
	cmp		rdi, 0
	jl		_retz
	cmp		rdi, 127
	jg 		_retz
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
