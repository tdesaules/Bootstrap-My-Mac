#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Fish${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} configure fish shell"

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Fish${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy fish configuration"
cp -rf $SOURCE/fish/.config/fish $HOME/.config/

if ! grep --quiet --fixed-strings --line-regexp "/opt/homebrew/bin/fish" /etc/shells &> /dev/null
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Fish${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add fish to /etc/shells"
    echo "/opt/homebrew/bin/fish" | sudo tee /etc/shells
fi

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Fish${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} change default shell"
sudo chsh -s /opt/homebrew/bin/fish $USER