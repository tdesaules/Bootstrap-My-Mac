{
  description = "My Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  let
    hostname = "Thibaults-MacBook-Pro";
    platform = "aarch64-darwin";
    configuration = { pkgs, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages = [
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
        pkgs.lima
        pkgs.k0sctl
        pkgs.k9s
        pkgs.kubectl
        pkgs.envsubst
        pkgs.go-task
        pkgs.darwin.iproute2mac
      ];

      # Auto upgrade nix package and the daemon service.
      services.nix-daemon.enable = true;
      nix.package = pkgs.nix;

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Create /etc/zshrc that loads the nix-darwin environment.
      # programs.zsh.enable = true;  # default shell on catalina
      programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 4;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "${platform}";
      nixpkgs.config.allowUnsupportedSystem = false;
    };
  in
  {
    # Build darwin flake using:
    darwinConfigurations."${hostname}" = nix-darwin.lib.darwinSystem {
      modules = [ configuration ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."${hostname}".pkgs;
  };
}
