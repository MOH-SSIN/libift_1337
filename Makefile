# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mez-zahi <mez-zahi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/31 12:57:29 by mez-zahi          #+#    #+#              #
#    Updated: 2024/11/08 17:23:57 by mez-zahi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS =  ft_split.c  ft_strchr.c ft_strtrim.c ft_substr.c ft_memmove.c ft_strlen.c  ft_strrchr.c ft_bzero.c ft_strdup.c ft_calloc.c \
		ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_memcpy.c ft_memcmp.c ft_strlcpy.c ft_strlcat.c\
		ft_strncmp.c ft_strnstr.c ft_memset.c ft_atoi.c ft_strjoin.c ft_itoa.c \
		ft_strmapi.c ft_striteri.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putchar_fd.c ft_memchr.c\

BSRCS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c


OBJS = $(SRCS:.c=.o)
OBJS_BONUS = $(BSRCS:.c=.o)
HEADER = libft.h
LIBC = ar rc
CC = cc
RM = v
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS)
	$(LIBC) $(NAME) $(OBJS)

bonus: ${OBJS_BONUS}
	${LIBC} ${NAME} ${OBJS_BONUS}

%.o:%.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) ${OBJS_BONUS}
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus