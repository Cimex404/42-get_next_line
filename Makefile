# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgraf <jgraf@student.42heilbronn.de>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/29 08:37:19 by jgraf             #+#    #+#              #
#    Updated: 2025/02/11 21:17:32 by jgraf            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#	Compilation Rules
CC = cc
CFLAGS = -Wall -Werror -Wextra -Iinclude
SRC = src/get_next_line.c src/get_next_line_utils.c
OBJ = $(CFILES:.c=.o)
NAME = get_next_line

#	Colors
GREEN = \033[0;32m
RED = \033[0;31m
RESET = \033[0m

#	Compilation
all: $(NAME)

$(NAME): $(OBJ)
	@$(CC) $(CFLAGS) -o $(NAME) $(SRC)
	@touch TestFile.txt; echo "Line 1\nLine 2\nLine 3\nLine 4 is a little more interesting than the other lines \
	\nLine 5\nLine 6\nLine 7\nLine 8\nLine 9\nLast Line" > TestFile.txt
	@echo "$(GREEN)Compilation of get_next_line is complete!$(RESET)"

clean:
	@rm -f $(OBJ)
	@rm -f TestFile.txt
	@echo "$(RED)Object files deleted!$(RESET)"

fclean: clean
	@rm -f $(NAME)
	@echo "$(RED)$(NAME) deleted!$(RESET)"

re: fclean all

.PHONY: all re fclean clean
