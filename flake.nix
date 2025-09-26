{
  description = "NixOS configuration";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    catppuccin.url = "github:catppuccin/nix";

    # Home-Manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Hyprland
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland-plugins = {
      url = "github:hyprwm/hyprland-plugins";
      inputs.hyprland.follows = "hyprland";
    };
    hyprpanel = {
      url = "github:Jas-SinghFSU/HyprPanel";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    Hyprspace = {
      url = "github:KZDKM/Hyprspace";
      inputs.hyprland.follows = "hyprland";
    };
    hypr-dynamic-cursors = {
      url = "github:VirtCode/hypr-dynamic-cursors";
      inputs.hyprland.follows = "hyprland";
    };
    hyprgrass = {
      url = "github:horriblename/hyprgrass";
      inputs.hyprland.follows = "hyprland"; # IMPORTANT
    };

    # Spicetify
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
    };

    # Zen browser
    zen-browser.url = "github:0xc000022070/zen-browser-flake";

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    lanzaboote = {
      url = "github:nix-community/lanzaboote";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    alejandra = {
      url = "github:kamadorueda/alejandra";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    spicetify-nix,
    nixvim,
    nixos-hardware,
    zen-browser,
    lanzaboote,
    alejandra,
    catppuccin,
    ...
  } @ inputs: let
    lib = nixpkgs.lib;
    username = "shampoojr";
    system = "x86_64-linux";
    laptop = "LT590";
    computer = "MSI";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
    };
  in {
    nixosConfigurations = rec {
      "${laptop}" = lib.nixosSystem {
        specialArgs = {
          inherit
            inputs
            system
            username
            laptop
            ;
        };
        modules = [
          ./hosts/laptop/configuration.nix
          catppuccin.nixosModules.catppuccin
          nixos-hardware.nixosModules.lenovo-thinkpad-t590
          #lanzaboote.nixosModules.lanzaboote

          #{ environment.systemPackages = [ alejandra.defaultPackage.${system} ]; }
          # (
          #   {
          #     pkgs,
          #     lib,
          #     ...
          #   }: {
          #     environment.systemPackages = [
          #       # For debugging and troubleshooting Secure Boot.
          #       pkgs.sbctl
          #     ];

          #     # Lanzaboote currently replaces the systemd-boot module.
          #     # This setting is usually set to true in configuration.nix
          #     # generated at installation time. So we force it to false
          #     # for now.
          #     boot.loader.systemd-boot.enable = lib.mkForce false;

          #     boot.lanzaboote = {
          #       enable = true;
          #       pkiBundle = "/var/lib/sbctl";
          #     };
          #   }
          # )
        ];
      };
    };
    nixosConfigurations = {
      "${computer}" = lib.nixosSystem {
        specialArgs = {
          inherit
            inputs
            system
            username
            computer
            ;
        };
        modules = [
          ./hosts/desktop/configuration.nix
          catppuccin.nixosModules.catppuccin
        ];
      };
    };

    homeConfigurations."${username}" = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      extraSpecialArgs = {
        inherit
          inputs
          system
          username
          pkgs
          ;
      };
      modules = [
        ./home/home.nix
        catppuccin.homeModules.catppuccin
      ];
    };
  };
}
