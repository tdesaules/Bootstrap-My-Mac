#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Skhd${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} stop skhd"
skhd --stop-service

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Skhd${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy skhd config"
cp -rf $SOURCE/skhd/.config/skhd $HOME/.config/

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Skhd${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} start skhd"
skhd --start-service
