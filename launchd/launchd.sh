#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Launchd${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy launchd bootstrap plist"
cp -rf $SOURCE/bootstrap.plist $HOME/Library/LaunchAgents/bootstrap-my-mac.plist

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Launchd${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} load launchd plist"
launchctl remove me.desaules.bootstrap-my-mac
launchctl load $HOME/Library/LaunchAgents/bootstrap-my-mac.plist
