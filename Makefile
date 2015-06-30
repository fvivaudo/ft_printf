# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fvivaudo <fvivaudo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/07/16 09:42:25 by fvivaudo          #+#    #+#              #
#    Updated: 2014/12/05 17:24:52 by fvivaudo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Werror -Wextra

OBJ =		flags.o		\
			ft_printf.o	\
			getlast.o	\
			opt1.o		\
			opt2.o		\
			opt3.o		\
			opt4.o		\
			opt5.o		\
			recursive.o	\
			order.o

SRC = 		srcs/flags.c		\
			srcs/ft_printf.c	\
			srcs/getlast.c	\
			srcs/opt1.c		\
			srcs/opt2.c		\
			srcs/opt3.c		\
			srcs/opt4.c		\
			srcs/opt5.c		\
			srcs/order.c		\
			srcs/recursive.c

NAME = libftprintf.a

all : $(NAME)

$(NAME) :
	@make -C libft
	@gcc  -c $(FLAGS) $(SRC) -I libft/includes/ -I includes/
	@ar rc temp.a $(OBJ)
	@libtool -static -o $(NAME) libft/libft.a temp.a 
	@rm temp.a
	@ranlib $(NAME)

clean:
	@rm -Rf $(OBJ)

fclean: clean
	@rm -Rf $(NAME) temp.a

re: fclean all
	
