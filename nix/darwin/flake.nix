{
  description = "Darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable"; 
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };
    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, home-manager, nix-homebrew, homebrew-core, homebrew-cask }:
  let
    configuration = { config, pkgs, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages =
        [ 
          pkgs.neovim
          pkgs.tmux
          pkgs.fish
          pkgs.starship
          pkgs.fzf
          pkgs.pnpm
          pkgs.postgresql_16
          pkgs.jankyborders
          pkgs.google-cloud-sdk
          pkgs.go
          pkgs.qmk
          pkgs.deno
          pkgs.lazygit
          pkgs.nodejs_22
          pkgs.atlas
          pkgs.golangci-lint
          pkgs.protobuf
          pkgs.mongosh
        ];

      fonts.packages = [
          pkgs.nerd-fonts.recursive-mono
          pkgs.nerd-fonts.blex-mono
          pkgs.nerd-fonts.fira-code
          pkgs.nerd-fonts.hack
          pkgs.nerd-fonts.victor-mono
          pkgs.nerd-fonts.jetbrains-mono
          pkgs.nerd-fonts.commit-mono
          pkgs.nerd-fonts._0xproto
          pkgs.nerd-fonts.caskaydia-mono
          pkgs.nerd-fonts.comic-shanns-mono
          pkgs.nerd-fonts.noto
          pkgs.nerd-fonts.overpass
          pkgs.nerd-fonts.ubuntu-mono
          pkgs.nerd-fonts.googlesanscode
      ];

      homebrew = {
        enable = true;
        casks = [
          "qmk-toolbox"
        ];
      };

      # Auto upgrade nix package and the daemon service.
      # nix.package = pkgs.nix;

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Enable alternative shell support in nix-darwin.
      # programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 5;
      system.primaryUser = "andres";

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";

      users.users.andres.home = "/Users/andres";
      home-manager.backupFileExtension = "backup";
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#Andres-MacStudio
    darwinConfigurations."Revelo-MBP" = nix-darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [ 
        configuration 
        home-manager.darwinModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.andres = import ./home.nix;
        }
        nix-homebrew.darwinModules.nix-homebrew {
          nix-homebrew = {
            enable = true;
            enableRosetta = true;
            user = "andres";
            autoMigrate = true;
          };
        }
      ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."Andres-MacStudio".pkgs;
  };
}
