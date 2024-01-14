#!/bin/bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Fish${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} configure fish shell"

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Fish${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy fish configuration"
cp -R $SOURCE/fish/.config/fish $HOME/.config/

if ! grep --quiet --fixed-strings --line-regexp "/run/current-system/sw/bin/fish" /etc/shells &> /dev/null
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Fish${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add fish to /etc/shells"
    echo "/run/current-system/sw/bin/fish" | sudo tee -a /etc/shells
fi

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Fish${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} change default shell"
chsh -s /run/current-system/sw/bin/fish
