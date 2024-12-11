#!/usr/bin/env bash

SOURCE=$(dirname $BASH_SOURCE[0])

touch /tmp/test

# Source .env file

set -o allexport; source $SOURCE/.env set; set +o allexport

# Sudo

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} configure password less sudo"
echo "$(whoami) ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$(whoami)

# Launchd

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source launchd script"
source $SOURCE/launchd/launchd.sh

# Homebrew

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source homebrew script"
source $SOURCE/homebrew/homebrew.sh

# Fish

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source fish script"
source $SOURCE/fish/fish.sh

# Hyper

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source hyper script"
source $SOURCE/hyper/hyper.sh

# Webapp

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source webapp script"
source $SOURCE/webapp/webapp.sh

# Dock

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source dock script"
source $SOURCE/dock/dock.sh

# Finder

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source finder script"
source $SOURCE/finder/finder.sh

# Yabai

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source yabai script"
source $SOURCE/yabai/yabai.sh

# Borders

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source borders script"
source $SOURCE/borders/borders.sh

# Skhd

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source skhd script"
source $SOURCE/skhd/skhd.sh

# Lima

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Lima${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source lima script"
source $SOURCE/lima/lima.sh
