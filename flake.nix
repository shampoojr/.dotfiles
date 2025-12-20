{
  description = "NixOS configuration";

  inputs = {
    # Nixpkgs
    nixpkgs = {
      url = "github:Nixos/nixpkgs/nixos-unstable";
    };

    # Hardware
    nixos-hardware = {
      url = "github:NixOS/nixos-hardware/master";
    };

    # Home-Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Hyprland
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Spicetify
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
    };

    # Nvim
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # QuickShell
    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
    };

    # Formatter
    alejandra = {
      url = "github:kamadorueda/alejandra";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nix Search
    nix-search-tv = {
      url = "github:3timeslazy/nix-search-tv";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
    };
    specialArgs = {inherit inputs;};
    hosts = import ./hosts/default.nix {inherit inputs;};
    users = import ./home/default.nix {inherit inputs;};
    mkHost = _: attrs:
      lib.nixosSystem {
        inherit (attrs) system;
        specialArgs = specialArgs;
        modules = attrs.modules or [];
      };
    mkHome = _: attrs:
      home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = specialArgs;
        modules = attrs.modules or [];
      };
  in {
    nixosConfigurations = lib.mapAttrs mkHost hosts;
    homeConfigurations = lib.mapAttrs mkHome users;
  };
}
