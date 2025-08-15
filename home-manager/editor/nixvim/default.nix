{ inputs, ... }:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];
  programs = {
    nixvim = {
      enable = true;
      opts = {
        tabstop = 2;
        expandtab =true;
        softtabstop=2;
        number = true;
        relativenumber = true;
        shiftwidth = 2;
      };

      colorschemes.catppuccin.enable = true;
      plugins = {
        cord.enable = true;
        lint.enable = true;
        lazy.enable = true;
        lualine.enable = true;
        nix.enable = true;
        treesitter.enable = true;

        telescope = {
          enable = true;
          extensions = {
            fzf-native.enable = true;
          };
          keymaps = {
            "<C-p>" = {
              action = "find_files";
            };
          };
        };
      };
    };
  };
}
