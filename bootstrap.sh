#!/bin/bash

set -o allexport; source .env set; set +o allexport

# install homebrew and configure it

export NONINTERACTIVE=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/tdesaules/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install packages

brew bundle

# run ansible

ansible-playbook ansible/bootstrap.yml --ask-become-pass --ask-vault-pass
