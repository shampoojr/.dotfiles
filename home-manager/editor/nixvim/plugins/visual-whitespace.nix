{
  programs.nixvim.plugins = {
    visual-whitespace = {
      enable = true;
      autoLoad = true;
      settings = {
        enabled = true;
        lead = true;
        nbsp = true;
        space = true;
        tab = true;
        trail = true;
      };
    };
  };
}
