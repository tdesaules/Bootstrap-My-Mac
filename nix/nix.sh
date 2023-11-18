#!/usr/bin/env bash

if ! command -v nix &> /dev/null
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Nix${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install nix"
    # to be defined
fi

if ! command -v darwin-rebuild &> /dev/null
then
    echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Nix${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} install nix-darwin"
    # to be defined
fi

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Nix${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} copy darwin-configuration.nix"
cp -rf $SOURCE/nix/.nixpkgs/darwin-configuration.nix $HOME/.nixpkgs/darwin-configuration.nix

echo -e "[ ${BLUE}$(date)${RESET_COLOR} ] ( ${GREEN}Nix${RESET_COLOR} ) ${B_PURPLE}-${RESET_COLOR} darwin-rebuild switch"
darwin-rebuild switch

# cli to install

# sudo chmod 644 /etc/synthetic.conf
# curl -L https://nixos.org/nix/install | sh
# NIX_FIRST_BUILD_UID=30001 sh <(curl -L https://nixos.org/nix/install) --yes
# sudo rm /etc/ssl/certs/ca-certificates.crt
# sudo ln -s /nix/var/nix/profiles/default/etc/ssl/certs/ca-bundle.crt /etc/ssl/certs/ca-certificates.crt
# nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer
# sudo mv /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt.before-nix-darwin
# sudo mv /etc/bashrc /etc/bashrc.before-nix-darwin
# sudo mv /etc/zshrc /etc/zshrc.before-nix-darwin
# echo y | ./result/bin/darwin-installer
# darwin-rebuild switch