#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Wallpaper${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy wallpaper"
cp -rf $SOURCE/wallpaper/.config/wallpaper $HOME/.config/

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Wallpaper${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} apply wallpaper"
m wallpaper $HOME/.config/wallpaper/wallpaper.jpg
