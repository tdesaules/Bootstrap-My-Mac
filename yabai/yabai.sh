#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Yabai${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} stop yabai"
yabai --stop-service

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Yabai${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy yabai config"
cp -rf $SOURCE/yabai/.config/yabai $HOME/.config/

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Yabai${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} start yabai"
yabai --start-service
