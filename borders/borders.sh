#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Borders${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} stop borders"
brew services stop borders

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Borders${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy borders config"
cp -rf $SOURCE/borders/.config/borders $HOME/.config/

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Borders${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} stop borders"
brew services start borders
