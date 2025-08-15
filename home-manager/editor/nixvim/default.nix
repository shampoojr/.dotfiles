{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];
  programs = {
    nixvim = {
      enable = true;
      keymaps = [
        {
          action = ":Neotree filesystem reveal left<CR>";
          key = "<C-p>";
        }
      ];
      opts = {
        tabstop = 2;
        expandtab = true;
        softtabstop = 2;
        number = true;
        relativenumber = true;
        shiftwidth = 2;
      };

      colorschemes.catppuccin.enable = true;
      plugins = {
        cord.enable = true;
        lint.enable = true;
        lualine.enable = true;
        nix = {  
          enable = true;
          autoLoad = true;
         # package = pkgs.vimPlugins.vim-nix;
        };
        treesitter.enable = true;
        #rainbow-delimiters.enable = true;

        web-devicons = {
          enable = true;
        #  package = pkgs.vimPlugins.nvim-web-devicons;
        };
        nui = {
          enable = true;
          #package = vimPlugins.nui-nvim;
          autoLoad = true;
        };
        mini.enable = false;

        lazy = {
          enable = true;
          plugins = [

          ];
        };

        neo-tree = {
          enable = true;

        };

        telescope = {
          enable = true;
          extensions = {
            fzf-native.enable = true;
          };
          keymaps = {
            "<C-f>" = {
              action = "find_files";
            };
          };
        };
      };
    };
  };
}
