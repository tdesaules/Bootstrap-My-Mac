#!/bin/bash

# Source .env file

echo "$(date) --- Source .env file"

set -o allexport; source .env set; set +o allexport

# Install Nix and associated packages

if ! command -v nix-shell &> /dev/null
then
    echo "$(date) --- Install Nix"
    echo "$(date) --- Install Nix"nix-shell --packages hello
    sh <(curl -L https://nixos.org/nix/install) --daemon --yes
else
    echo "$(date) --- Update Nix"
    sudo -i nix-channel --update
    sudo -i nix-env --install --attr nixpkgs.nix
    sudo -i launchctl remove org.nixos.nix-daemon
    sudo -i launchctl load /Library/LaunchDaemons/org.nixos.nix-daemon.plist
fi

echo "$(date) --- Install Nix mandatory packages"
nix-env -iA $NIX_PACKAGES

# Install Homebrew

if ! grep --quiet --fixed-strings --line-regexp 'eval "$(/opt/homebrew/bin/brew shellenv)"' $HOME/.zprofile
then
    echo "$(date) --- Install Homebrew"
    export NONINTERACTIVE=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# install packages

# brew bundle

# run ansible

# ansible-playbook ansible/bootstrap.yml --ask-become-pass --ask-vault-pass
