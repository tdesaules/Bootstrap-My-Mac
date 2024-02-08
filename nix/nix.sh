#!/usr/bin/env bash

if ! command -v nix &> /dev/null
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Nix${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install nix"
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install --no-confirm
fi

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Nix${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy flake"
cp -rf $SOURCE/nix/.config/nix-darwin $HOME/.config/

if ! command -v darwin-rebuild &> /dev/null
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Nix${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install nix-darwin"
    nix run nix-darwin -- switch --flake ~/.config/nix-darwin
fi

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Yabai${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} add $(whoami) to run yabai as sudoer"
echo "$(whoami) ALL=(ALL:ALL) NOPASSWD: sha256:$(shasum -a 256 $(which darwin-rebuild) | cut -d' ' -f1) $(which darwin-rebuild)" | sudo tee /etc/sudoers.d/nix

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Nix${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} apply nix-darwin changes"
sudo -i rm -f /etc/bashrc
sudo -i darwin-rebuild switch --flake $HOME/.config/nix-darwin
