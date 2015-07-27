# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/31 17:41:17 by eteyssed          #+#    #+#              #
#    Updated: 2015/03/31 17:41:18 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_tolower

section .text

extern _ft_isalpha

_ft_tolower:
	call	_ft_isalpha
	cmp		rax, 0
	je		_ret
	cmp		rdi, 'Z'
	jg		_ret
	add		rdi, 32

_ret:
	mov		rax, rdi
	ret		

