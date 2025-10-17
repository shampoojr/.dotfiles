{
  programs.nixvim.plugins = {
    highlight-colors = {
      enable = true;
      settings = {
        enable_named_colors = true;
        render = "virtual";
        virtual_symbol = "■";
      };
    };
  };
}
