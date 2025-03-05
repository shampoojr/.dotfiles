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
    #flake-parts.url = "github:hercules-ci/flake-parts";

    # Spicetify
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    spicetify-nix.inputs.nixpkgs.follows = "nixpkgs";

    # Nixvim
    #nixvim.url = "github:nix-community/nixvim";
    # If you are not running an unstable channel of nixpkgs, select the corresponding branch of nixvim.
    nixvim.url = "github:nix-community/nixvim/nixos-24.11";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{
      home-manager,
      nixpkgs,
      nixvim,
      self,
      spicetify-nix,
      ...
    }:

    let
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
      spicePkgs = inputs.spicetify-nix.legacyPackages.${system};
      system = "x86_64-linux";
    in

    {

      nixosConfigurations = {
        shampoojr = lib.nixosSystem {
          inherit system;
          modules = [
            ./configuration.nix
          ];
        };
      };

      #

      homeConfigurations = {
        shampoojr = home-manager.lib.homeManagerConfiguration {
          extraSpecialArgs = {
            inherit inputs;
            inherit spicePkgs;
          };
          modules = [
            ./home.nix
          ];
          inherit pkgs;
        };
        specialArgs = {
          inherit system;
          inherit inputs;
        };
      };

      #
    };

}
