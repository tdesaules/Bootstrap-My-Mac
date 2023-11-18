#!/usr/bin/env bash

if ! test -f "/opt/homebrew/bin/brew"
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Brew${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install brew cli"
    export NONINTERACTIVE=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Brew${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install and update homebrew packages"
brew upgrade --greedy
brew bundle --file $SOURCE/homebrew/Brewfile --cleanup