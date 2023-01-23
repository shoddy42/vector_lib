# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: wkonings <wkonings@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2023/01/23 00:39:39 by wkonings      #+#    #+#                  #
#    Updated: 2023/01/23 02:27:46 by wkonings      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

# ----------------------------------------- #
# --------------- VARIABLES --------------- #
# ----------------------------------------- #

NAME 	:= vector_lib.a
FLAGS 	:= -Wall -Wextra -Werror
CFLAGS	:= -w -Wunreachable-code -Ofast
LIBNAME	:= vector lib
DEBUG 	:= #-g #-fsanitize=address

# ---------------------------------------- #
# --------------- DIRECTORIES ------------ #d
# ---------------------------------------- #

SRC_DIR		:= src
OBJ_DIR		:= obj
INCLUDE_DIR	:= include

# ----------------------------------------- #
# --------------- FILES ------------------- #
# ----------------------------------------- #

MAKEFILE	:= makefile
HEADER_FILES:= vector.h
HEADERS		:= $(addprefix $(INCLUDE_DIR)/, $(HEADER_FILES))

FILE_NAMES	:= dot cross sqr length unit
FILES		:= $(FILE_NAMES:%=vec_%.c)

SRCS	:=	$(addprefix $(SRC_DIR)/, $(FILES))
OBJS	:=	$(addprefix $(OBJ_DIR)/, $(FILES:%.c=%.o))

# ----------------------------------------- #
# --------- COLOURS / FORMATTING ---------- #
# ----------------------------------------- #

#Formatting
RESET	:= \1\33[0m\2
END		:= \1\33[0m\2\3
BANNER	:= banner

#Colours
YELLOW	:= \1\33[38;5;220m\2
BLACK	:= \1\33[38;5;232m\2
ORANGE	:= \1\33[38;5;202m\2
RED		:= \1\33[38;5;196m\2
PINK	:= \1\33[38;5;198m\2
GREEN	:= \1\33[38;5;28m\2
L_GREEN	:= \1\33[38;5;148m\2
BLUE	:= \1\33[38;5;33m\2
L_BLUE	:= \1\33[38;5;69m\2
D_BLUE	:= \1\33[38;5;21m\2
GREY	:= \1\33[38;5;242m\2
PURPLE	:= \1\33[38;5;92m\2
VIOLET	:= \1\33[38;5;183m\2

# ----------------------------------------- #
# --------------- RECIPES ----------------- #
# ----------------------------------------- #

$(NAME): $(OBJS) $(HEADERS) $(MAKEFILE)
	@printf "\n$(L_GREEN)Compiling $(YELLOW)$(NAME).\n$(END)"
	@ar rcs $(NAME) $(OBJS)
	@make ez
	@printf "$(L_GREEN)Compilation of $(YELLOW)$(NAME)$(GREEN) successful.\n$(END)"

all: $(NAME)

$(OBJ_DIR)/%.o:$(SRC_DIR)/%.c | $(HEADERS) $(BANNER)
	@mkdir -p $(dir $@)
	@printf "$(L_GREEN)Compiling $(GREEN)$(notdir $@) $(RESET)from $(GREEN)$(notdir $<)$(END)\n"
	@$(CC) $(FLAGS) $(INCLUDE) -c $< -o $@

clean:
	@printf "$(L_GREEN)Cleaning up $(YELLOW)$(LIBNAME)\n$(END)"
	/bin/rm -rf $(OBJ_DIR)

fclean:	clean
	/bin/rm -f $(NAME)
	@printf "$(L_GREEN)Fully cleaned $(YELLOW)$(LIBNAME)\n$(END)"

re: fclean all

ez:
	@printf "\n$(GREEN)"
	@printf "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ \n"
	@printf "⣿⣿⣿⣿⣿⣿⣿⠛⢩⣴⣶⣶⣶⣌⠙⠫⠛⢋⣭⣤⣤⣤⣤⡙⣿⣿⣿⣿⣿⣿ \n"
	@printf "⣿⣿⣿⣿⣿⡟⢡⣾⣿⠿⣛⣛⣛⣛⣛⡳⠆⢻⣿⣿⣿⠿⠿⠷⡌⠻⣿⣿⣿⣿ \n"
	@printf "⣿⣿⣿⣿⠏⣰⣿⣿⣴⣿⣿⣿⡿⠟⠛⠛⠒⠄⢶⣶⣶⣾⡿⠶⠒⠲⠌⢻⣿⣿ \n"
	@printf "⣿⣿⠏⣡⢨⣝⡻⠿⣿⢛⣩⡵⠞⡫⠭⠭⣭⠭⠤⠈⠭⠒⣒⠩⠭⠭⣍⠒⠈⠛ \n"
	@printf "⡿⢁⣾⣿⣸⣿⣿⣷⣬⡉⠁⠄⠁⠄⠄⠄⠄⠄⠄⠄⣶⠄⠄⠄⠄⠄⠄⠄⠄⢀ \n"
	@printf "⢡⣾⣿⣿⣿⣿⣿⣿⣿⣧⡀⠄⠄⠄⠄⠄⠄⠄⢀⣠⣿⣦⣤⣀⣀⣀⣀⠄⣤⣾ \n"
	@printf "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⡶⢇⣰⣿⣿⣟⠿⠿⠿⠿⠟⠁⣾⣿⣿ \n"
	@printf "⣿⣿⣿⣿⣿⣿⣿⡟⢛⡛⠿⠿⣿⣧⣶⣶⣿⣿⣿⣿⣿⣷⣼⣿⣿⣿⣧⠸⣿⣿ \n"
	@printf "⠘⢿⣿⣿⣿⣿⣿⡇⢿⡿⠿⠦⣤⣈⣙⡛⠿⠿⠿⣿⣿⣿⣿⠿⠿⠟⠛⡀⢻⣿ \n"
	@printf "⠄⠄⠉⠻⢿⣿⣿⣷⣬⣙⠳⠶⢶⣤⣍⣙⡛⠓⠒⠶⠶⠶⠶⠖⢒⣛⣛⠁⣾⣿ \n"
	@printf "⠄⠄⠄⠄⠄⠈⠛⠛⠿⠿⣿⣷⣤⣤⣈⣉⣛⣛⣛⡛⠛⠛⠿⠿⠿⠟⢋⣼⣿⣿ \n"
	@printf "⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠉⠉⣻⣿⣿⣿⣿⡿⠿⠛⠃⠄⠙⠛⠿⢿⣿ \n"
	@printf "⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢬⣭⣭⡶⠖⣢⣦⣀⠄⠄⠄⠄⢀⣤⣾⣿ \n"
	@printf "⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢰⣶⣶⣶⣾⣿⣿⣿⣿⣷⡄⠄⢠⣾⣿⣿⣿ \n"
	@printf "$(END)"

$(BANNER):
	@printf	"$(L_GREEN)  _    __            $(GREEN)    __     _  __   $(GREY)    ______\n"
	@printf	"$(L_GREEN) | |  / /___   _____ $(GREEN)   / /    (_)/ /_  $(GREY)   / ____/\n"
	@printf	"$(L_GREEN) | | / // _ \ / ___/ $(GREEN)  / /    / // __ \ $(GREY)  / /     \n"
	@printf	"$(L_GREEN) | |/ //  __// /__   $(GREEN) / /___ / // /_/ / $(GREY) / /___   \n"
	@printf	"$(L_GREEN) |___/ \___/ \___/   $(GREEN)/_____//_//_____/  $(GREY) \____/   \n"
	@printf "\n$(END)"

.PHONY: all clean fclean re banner pog
                                                