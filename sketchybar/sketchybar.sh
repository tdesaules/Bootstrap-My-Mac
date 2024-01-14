#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Sketchybar${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy sketchybar config"
cp -rf $SOURCE/sketchybar/.config/sketchybar $HOME/.config/
