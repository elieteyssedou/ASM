# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/31 17:26:38 by eteyssed          #+#    #+#              #
#    Updated: 2015/03/31 17:26:38 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_toupper

section .text

extern _ft_isalpha

_ft_toupper:
	call	_ft_isalpha
	cmp		rax, 0
	je		_ret
	cmp		rdi, 'Z'
	jle		_ret
	sub		rdi, 32

_ret:
	mov		rax, rdi
	ret		
