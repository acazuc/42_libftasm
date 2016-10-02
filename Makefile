# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/25 06:50:12 by acazuc            #+#    #+#              #
#    Updated: 2016/10/02 15:24:32 by acazuc           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

ASMC = ~/.brew/bin/nasm

ASMFLAGS = -f macho64

SRCS_PATH = src/

SRCS_NAME = ft_bzero.s \
			ft_strcat.s \
			ft_isalpha.s \
			ft_isdigit.s \
			ft_isalnum.s \
			ft_isascii.s \
			ft_isprint.s \
			ft_tolower.s \
			ft_toupper.s \
			ft_memcpy.s \
			ft_puts.s \
			ft_memset.s \
			ft_strlen.s \
			ft_strdup.s \
			ft_cat.s \
			ft_putchar.s \
			ft_putchar_fd.s \
			ft_putstr.s \
			ft_putstr_fd.s \
			ft_putendl.s \
			ft_putendl_fd.s \
			ft_isspace.s \
			ft_swap_int.s \
			ft_swap_long.s \
			ft_strcmp.s \
			ft_strequ.s \
			ft_strnequ.s \

SRCS = $(addprefix $(SRCS_PATH), $(SRCS_NAME))

OBJS_PATH = obj/

OBJS_NAME = $(SRCS_NAME:.s=.o)

OBJS = $(addprefix $(OBJS_PATH), $(OBJS_NAME))

all: odir $(NAME)

$(NAME): $(OBJS)
	@echo " - Making $(NAME)"
	@ar -rc $(NAME) $^
	@ranlib $(NAME)

$(OBJS_PATH)%.o: $(SRCS_PATH)%.s
	@echo " - Compiling $<"
	@$(ASMC) $(ASMFLAGS) -o $@ $<

odir:
	@mkdir -p $(OBJS_PATH)

clean:
	@echo " - Cleaning objs"
	@rm -f $(OBJS)

fclean: clean
	@echo " - Cleaning executable"
	@rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re odir
