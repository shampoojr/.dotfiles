{
  inputs = {
    # Nix Version
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Darwin
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    # Hardware
    nixos-hardware.url = "github:NixOS/nixos-hardware";

    # Home-manager
    home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager-unstable.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Flake parts
    flake-parts.url = "github:hercules-ci/flake-parts";

    # Spicetify
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    spicetify-nix.inputs.nixpkgs.follows = "nixpkgs";


    # Nixvim
    #nixvim.url = "github:nix-community/nixvim";
    # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
    nixvim.url = "github:nix-community/nixvim/nixos-24.11";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
  };

  # outputs =
  #   {
  #     flake-parts,
  #     home-manager,
  #     nixpkgs,
  #     nixvim,
  #     self,
  #     spicetify-nix,
  #     ...
  #   }@inputs:

  #   let
  #     lib = nixpkgs.lib;
  #     pkgs = nixpkgs.legacyPackages.${system};
  #     spicePkgs = inputs.spicetify-nix.legacyPackages.${system};
  #     system = "x86_64-linux";
  #   in

  #   {

  #     nixosConfigurations = {
  #       shampoojr = lib.nixosSystem {
  #         inherit system;
  #         modules = [
  #           ./configuration.nix
  #         ];
  #       };
  #     };

  #     #

  #     homeConfigurations = {
  #       shampoojr = home-manager.lib.homeManagerConfiguration {
  #         extraSpecialArgs = {
  #           inherit spicePkgs;
  #           inherit spicetify-nix;
  #         };
  #         modules = [
  #           ./home.nix
  #         ];
  #         inherit pkgs;
  #       };
  #       specialArgs = {
  #         inherit system;
  #         inherit inputs;
  #       };
  #     };

  #     #
  #   };

      outputs = inputs@{ self, ... }:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" ];
      imports = (with builtins;
        map
          (fn: ./modules/flake-parts/${fn})
          (attrNames (readDir ./modules/flake-parts)));

      perSystem = { lib, system, ... }: {
        # Make our overlay available to the devShell
        # "Flake parts does not yet come with an endorsed module that initializes the pkgs argument.""
        # So we must do this manually; https://flake.parts/overlays#consuming-an-overlay
        _module.args.pkgs = import inputs.nixpkgs {
          inherit system;
          overlays = lib.attrValues self.overlays;
          config.allowUnfree = true;
        };
      };

      # https://omnix.page/om/ci.html
      flake.om.ci.default.ROOT = {
        dir = ".";
        steps.flake-check.enable = false; # Doesn't make sense to check nixos config on darwin!
        steps.custom = { };
      };
    };


    
}
