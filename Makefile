# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eteyssed <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/31 15:53:27 by eteyssed          #+#    #+#              #
#    Updated: 2015/03/31 15:53:28 by eteyssed         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libfts.a
SRC		=	ft_isalpha.s ft_isalnum.s ft_isalpha.s ft_isascii.s ft_isdigit.s \
			ft_isprint.s ft_toupper.s ft_tolower.s ft_bzero.s ft_strcat.s \
			ft_puts.s ft_strlen.s ft_memset.s ft_memcpy.s ft_strdup.s ft_cat.s
OBJ		=	$(SRC:.s=.o)
NASM	=	~/.brew/bin/nasm -f macho64
FLAGS	=	-Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

%.o: %.s
	@$(NASM) -I . -o $@ $?

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all