#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Yabai${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} stop yabai"
yabai --stop-service

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Yabai${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy yabai config"
cp -rf $SOURCE/yabai/.config/yabai $HOME/.config/

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Yabai${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add $(whoami) to run yabai as sudoer"
echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d' ' -f1) $(which yabai) --load-sa" | sudo tee /etc/sudoers.d/yabai

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Yabai${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} start yabai"
yabai --start-service
