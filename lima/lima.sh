#!/usr/bin/env bash

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Lima${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} configure liman sudoers"
limactl sudoers > etc_sudoers.d_lima
sudo install -o root etc_sudoers.d_lima "/private/etc/sudoers.d/lima"
