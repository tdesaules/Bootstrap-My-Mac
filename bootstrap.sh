#!/bin/bash

# Source .env file

echo "$(date) --- Source .env file"

set -o allexport; source .env set; set +o allexport

# Install Nix and associated packages

source nix/nix.sh
