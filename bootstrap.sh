#!/usr/bin/env bash

SOURCE=$(dirname $BASH_SOURCE[0])

# Source .env file

set -o allexport; source $SOURCE/.env set; set +o allexport

# Nix

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source nix script"
source $SOURCE/nix/nix.sh

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

# Yabai

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source yabai script"
source $SOURCE/yabai/yabai.sh

# Boerders

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source borders script"
source $SOURCE/borders/borders.sh

# Skhd

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source skhd script"
source $SOURCE/skhd/skhd.sh
