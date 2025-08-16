{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./plugins/highlights.nix
    ./plugins/lazy.nix
    ./plugins/lint.nix
    ./plugins/lualine.nix
    ./plugins/mini.nix
    ./plugins/neocord.nix
    ./plugins/neotree.nix
    ./plugins/nix.nix
    ./plugins/nui.nix
    ./plugins/snack.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
    ./plugins/visual-whitespaces.nix
    ./plugins/web-devicons.nix
  ];
  programs = {
    nixvim = {
      enable = true;
      keymaps = [
      ];
      opts = {
      };
      colorschemes.catppuccin.enable = true;
      plugins = {
      };
    };
  };
}
