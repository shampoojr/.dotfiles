{
  programs.nixvim.plugins = {
    twilight = {
      enable = true;
      settings = {
        contect = 20;
        dimming = {
          alpha = 0.2;
        };
        expand = [
          "funtion"
          "method"
        ];
        treesitter = true;
      };
    };
  };
}
