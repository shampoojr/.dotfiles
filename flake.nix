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

    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

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
      inputs.hyprland.follows = "hyprland";
    };

    # catppuccin Theme
    catppuccin = {
      url = "github:catppuccin/nix";
    };

    # Spicetify
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
    };

    # Zen browser
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
    };

    # Nvim
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # SecureBoot
    lanzaboote = {
      url = "github:nix-community/lanzaboote";
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

    # Nix Software Center
    nix-software-center = {
      url = "github:snowfallorg/nix-software-center";
    };

    # Nix Config GUI
    nixos-conf-editor = {
      url = "github:snowfallorg/nixos-conf-editor";
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
    spicetify-nix,
    nixvim,
    nixos-hardware,
    zen-browser,
    lanzaboote,
    alejandra,
    catppuccin,
    quickshell,
    nix-search-tv,
    nix-software-center,
    nixos-conf-editor,
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
    # Laptop
    nixosConfigurations = {
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
        ];
      };
    };

    # Computer
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

    # Home Manager / User
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
