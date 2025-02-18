{
  inputs = {
    # Nix Version
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    #nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Home-manager
    home-manager.url = "github:nix-community/home-manager/release-24.11";
    #home-manager-unstable.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:

    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in

    {
      nixosConfigurations = {
        nixos = lib.nixosSystem {
          inherit system;
          modules = [
            ./configuration.nix
          ];
        };
      };

      homeConfigurations = {

        shampoojr = home-manager.lib.homeManagerConfiguration {
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
    };
}
