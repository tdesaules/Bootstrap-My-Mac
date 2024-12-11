#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} clean macos dock"
dockutil --remove all --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} configure auto hide feature"
m dock autohide YES
m dock autohidedelay 0

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} do not show recent app in dock"
defaults write com.apple.dock show-recents -bool FALSE

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} change dock size"
defaults write com.apple.dock tilesize -integer 42

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add launchpad"
dockutil --add '/Applications/Launchpad.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add system settings"
dockutil --add '/Applications/System Settings.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add spotify"
dockutil --add '/Applications/Spotify.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add enchanted"
dockutil --add '/Applications/Enchanted.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add chatgpt"
dockutil --add '/Applications/ChatGPT.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add whatsapp"
dockutil --add '/Applications/WhatsApp.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add notes"
dockutil --add '/Applications/Notes.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add arc"
dockutil --add '/Applications/Arc.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add safari"
dockutil --add '/Applications/Safari.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add google chrome"
dockutil --add '/Applications/Google Chrome.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add vscode"
dockutil --add '/Applications/Visual Studio Code.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add hyper"
dockutil --add '/Applications/Hyper.app' --no-restart

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Dock${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add autodesk fusion"
dockutil --add  "$HOME/Library/Application Support/Autodesk/webdeploy/production/Autodesk Fusion 360.app"