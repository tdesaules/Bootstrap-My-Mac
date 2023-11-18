#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Finder${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} show hidden file"
m finder showhiddenfiles YES

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Finder${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} show path"
m finder showpath YES

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Finder${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} show desktop"
m finder showdesktop YES
