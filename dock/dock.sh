#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} clean macos dock"
dockutil --remove all --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add launchpad"
dockutil --add '/Applications/Launchpad.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add system settings"
dockutil --add '/Applications/System Settings.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add vscode"
dockutil --add '/Applications/WhatsApp.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add notes"
dockutil --add '/Applications/Notes.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add safari"
dockutil --add '/Applications/Safari.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add vscode"
dockutil --add '/Applications/Visual Studio Code.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} configure auto hide feature"
m dock autohide YES
m dock autohidedelay 0

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} change dock size"
defaults write com.apple.dock tilesize -integer 44