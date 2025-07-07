{
  inputs = {
    # Nix Version
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    # Hardware
    nixos-hardware.url = "github:NixOS/nixos-hardware";

    # Darwin
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Home-manager
    # home-manager = {
    #   url = "github:nix-community/home-manager/release-25.05";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };

    # Nixvim
    # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprland
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprspace
    hyprspace = {
      url = "github:KZDKM/hyprspace";
    };

    # Spicetify
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Flake parts
    #flake-parts.url = "github:hercules-ci/flake-parts";

    # Rustup
    rust-overlay.url = "github:oxalica/rust-overlay";

    # Zen browser
    zen-browser.url = "github:0xc000022070/zen-browser-flake";

  };

  outputs = inputs @ { self, nixpkgs-unstable, nixpkgs, ... }: 
  let
  system = "x64_86-linux";
  pkgs = import nixpkgs.legacyPackages.${system};
  in{
      nixosConfigurations = {
        system = "x86_64-linux";
        nixos = nixpkgs.lib.nixosSystem {
          modules = [
            {
             # nixpkgs.overlays = [inputs.hyprpanel.overlay];
              _module.args = {inherit inputs;};
            }
            inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t590
            #inputs.home-manager.nixosModules.home-manager
            ./configuration.nix
          ];
        };
      };
    };
}