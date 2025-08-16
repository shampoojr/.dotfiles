{
  programs.nixvim.plugins = {
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
}
