{ config, pkgs, spicetify-nix, ... }:
{
  home.file = { };
  home.homeDirectory = "/home/shampoojr";
  home.sessionVariables = { };
  home.stateVersion = "24.11";
  home.username = "shampoojr";
  imports = [ ./imports
  spicetify-nix.homeManagerModules.default
];
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
}
