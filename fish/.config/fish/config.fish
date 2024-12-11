if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Configure fish path
fish_add_path /run/current-system/sw/bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# Configure aliases
alias lzg="lazygit"

# Configure git
git config --global user.name "Thibault DESAULES"
git config --global user.email thibault@desaules.me
git config --global init.defaultBranch main
git config --global core.editor "code --wait"

# Define environement variable
set NIXPKGS_ALLOW_UNFREE 1
set OLLAMA_HOST 0.0.0.0:11434

# Configure Starship
starship init fish | source

# Configure lima completion
limactl completion fish | source

# Configure aliases
alias lzg="lazygit"
alias k="kubectl"
alias hi="echo 'hello dude'"
alias clr="clear"

# Print Neofetch
fastfetch
