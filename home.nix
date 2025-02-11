{ config, pkgs, ... }:
{
  imports = [
    ./imports
  ];

  home.username = "shampoojr";
  home.homeDirectory = "/home/shampoojr";
  home.stateVersion = "24.11";

  nixpkgs.config.allowUnfree = true;

  home.file = {

  };

  home.sessionVariables = {

  };

  programs.home-manager.enable = true;
}
