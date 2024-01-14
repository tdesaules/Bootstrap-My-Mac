#!/bin/bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Hyper${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} configure hyper terminal"

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Hyper${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy hyper configuration"
cp -R $SOURCE/hyper/.hyper.js $HOME/
