#!/bin/bash

if ! command -v nix-shell &> /dev/null
then
    echo "$(date) Nix : Install Nix"
    curl -L https://nixos.org/nix/install | sh -s -- --yes
fi

echo "$(date) Nix : Update Nix"
sudo -i nix-channel --update
sudo -i nix-env --install --attr nixpkgs.nix
sudo -i launchctl remove org.nixos.nix-daemon
sudo -i launchctl load /Library/LaunchDaemons/org.nixos.nix-daemon.plist

echo "$(date) Nix : Install Nix mandatory packages"
nix-env --install --attr nixpkgs.jq
nix-env --install --attr $(jq -r '. | @tsv' $(dirname $BASH_SOURCE)/packages.json)
