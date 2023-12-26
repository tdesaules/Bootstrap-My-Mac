#!/bin/bash

if ! grep --quiet --fixed-strings --line-regexp "$HOME/.nix-profile/bin/fish" /etc/shells &> /dev/null
then
    echo "$(date) Fish : Add '$HOME/.nix-profile/bin/fish' to '/etc/shells'"
    echo "$HOME/.nix-profile/bin/fish" | sudo tee -a /etc/shells
fi
echo "$(date) Fish : Update default shell to '$HOME/.nix-profile/bin/fish'"
chsh -s $HOME/.nix-profile/bin/fish

if ! $HOME/.nix-profile/bin/fish -c 'echo $PATH' | grep --quiet "/nix/var/nix/profiles/default/bin"
then
    echo "$(date) Fish : Add '/nix/var/nix/profiles/default/bin' to PATH"
    $HOME/.nix-profile/bin/fish -c "fish_add_path /nix/var/nix/profiles/default/bin"
fi

if ! $HOME/.nix-profile/bin/fish -c 'echo $PATH' | grep --quiet "$HOME/.nix-profile/bin"
then
    echo "$(date) Fish : Add '$HOME/.nix-profile/bin' to PATH"
    $HOME/.nix-profile/bin/fish -c "fish_add_path $HOME/.nix-profile/bin"
fi

if ! $HOME/.nix-profile/bin/fish -c 'echo $PATH' | grep --quiet "/opt/homebrew/bin"
then
    echo "$(date) Fish : Add '/opt/homebrew/bin' to PATH"
    $HOME/.nix-profile/bin/fish -c "fish_add_path /opt/homebrew/bin"
fi

if ! $HOME/.nix-profile/bin/fish -c 'echo $PATH' | grep --quiet "/opt/homebrew/sbin"
then
    echo "$(date) Fish : Add '/opt/homebrew/sbin' to PATH"
    $HOME/.nix-profile/bin/fish -c "fish_add_path /opt/homebrew/sbin"
fi
