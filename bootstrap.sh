#!/bin/bash

set -o allexport; source .env set; set +o allexport

# install homebrew and configure it

# curl https://github.com/Homebrew/brew/releases/download/${HOMEBREW_VERSION}/Homebrew-${HOMEBREW_VERSION}.pkg -o Homebrew-${HOMEBREW_VERSION}.pkg
# installer -pkg Homebrew-${HOMEBREW_VERSION}.pkg -target /
# rm Homebrew-${HOMEBREW_VERSION}.pkg

export NONINTERACTIVE=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install dependencies for ansible

brew install python ansible

# run ansible

ansible-playbook ansible/bootstrap.yml --ask-become-pass --ask-vault-pass
