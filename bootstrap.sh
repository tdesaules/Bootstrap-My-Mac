#!/bin/bash

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

# Sketchybar

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Bootstrap${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} source sketchybar script"
source $SOURCE/sketchybar/sketchybar.sh
