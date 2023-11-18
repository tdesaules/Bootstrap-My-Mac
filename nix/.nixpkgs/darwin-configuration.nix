{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ 
        pkgs.nix
        pkgs.fish
        pkgs.starship
        pkgs.jq
        pkgs.yq
        pkgs.wget
        pkgs.m-cli
        pkgs.git
        pkgs.git-extras
        pkgs.lazygit
        pkgs.lazycli
        pkgs.dockutil
        pkgs.lf
        pkgs.glances
        pkgs.mas
        pkgs.tree
        pkgs.thefuck
        pkgs.btop
        pkgs.fzf
        pkgs.tldr
        pkgs.gh
        pkgs.glab
        pkgs.neofetch
        pkgs.bat
        pkgs.toybox
        pkgs.minicom
        pkgs.go-task
        pkgs.k0sctl
        pkgs.k9s
        pkgs.kubectl
        pkgs.envsubst
        pkgs.go-task
        pkgs.darwin.iproute2mac
    ];

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Create /etc/zshrc that loads the nix-darwin environment.
  # programs.zsh.enable = true;  # default shell on catalina
  programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}