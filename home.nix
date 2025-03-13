{ config, pkgs, inputs, ... }:
{
  home.file = { };
  home.homeDirectory = "/home/shampoojr";
  home.sessionVariables = { };
  home.stateVersion = "24.11";
  home.username = "shampoojr";
  imports = [./home-manager/imports];
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
}
