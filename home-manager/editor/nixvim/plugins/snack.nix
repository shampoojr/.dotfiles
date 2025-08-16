{
  programs.nixvim.plugins = {
    snacks = {
      enable = true;
      settings = {
        bigfile = {
          enabled = true;
        };

        notifier = {
          enabled = true;
          timeout = 3000;
        };

        quickfile = {
          enabled = false;
        };

        statuscolumn = {
          enabled = false;
        };

        words = {
          debounce = 100;
          enabled = true;
        };
      };
    };
  };
}
