#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Webapp${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} check and install webapp"

if [ ! -d "$HOME/Applications/Crunchyroll.app" ]
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Webapp${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install Crunchyroll"
    tar xzf $SOURCE/webapp/crunchyroll.tar.gz --directory $HOME/Applications
fi

if [ ! -d "$HOME/Applications/Disney+.app" ]
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Webapp${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install Disney+"
    tar xzf $SOURCE/webapp/disneyplus.tar.gz --directory $HOME/Applications
fi

if [ ! -d "$HOME/Applications/Netflix.app" ]
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Webapp${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install Netflix"
    tar xzf $SOURCE/webapp/netflix.tar.gz --directory $HOME/Applications
fi

if [ ! -d "$HOME/Applications/Prime Video.app" ]
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Webapp${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install Prime Video"
    tar xzf $SOURCE/webapp/primevideo.tar.gz --directory $HOME/Applications
fi

if [ ! -d "$HOME/Applications/myCANAL.app" ]
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Webapp${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install myCANAL"
    tar xzf $SOURCE/webapp/mycanal.tar.gz --directory $HOME/Applications
fi