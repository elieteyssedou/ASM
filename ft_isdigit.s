# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/31 16:16:18 by eteyssed          #+#    #+#              #
#    Updated: 2015/03/31 16:16:19 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_isdigit

section .text

_ft_isdigit:
	cmp		rdi, '0'
	jl		_retz
	cmp		rdi, '9'
	jg 		_retz
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
