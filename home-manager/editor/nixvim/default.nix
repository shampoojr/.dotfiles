{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./plugins
    ./keymaps.nix
    ./opts.nix
  ];
  programs = {
    nixvim = {
      enable = true;
      colorschemes.catppuccin.enable = true;
    };
  };
}
