{
  programs.nixvim.keymaps = [
    {
      action = ":Neotree filesystem reveal left<CR>";
      key = "<C-p>";
      options = {
        silent = true;
      };
    }
  ];
}
