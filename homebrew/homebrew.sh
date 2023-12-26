#!/bin/bash

if ! test -f "/opt/homebrew/bin/brew"
then
    echo "$(date) --- Install Homebrew"
    export NONINTERACTIVE=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "$(date) --- Install Homebrew mandatory packages"
# brew bundle
