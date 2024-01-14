#!/bin/bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Sketchybar${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy setchybar configuration"
cp -R $SOURCE/setchybar/.config/setchybar $HOME/.config/

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Sketchybar${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} restart sketchybar"
brew services restart sketchybar