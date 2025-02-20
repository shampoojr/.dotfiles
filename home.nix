{ config, pkgs, ... }:
{
  home.file = { };
  home.homeDirectory = "/home/shampoojr";
  home.sessionVariables = { };
  home.stateVersion = "24.11";
  home.username = "shampoojr";
  imports = [ ./imports ];
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
}
