{...}: {
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      keybind = "ctrl+shift+R=reload_config";

      bold-is-bright = true;
      font-family = "'FiraCode Nerd Font Bold', 'Fira Code Symbols'";
      font-size = 21;
      font-style = true;
      font-style-bold = true;
      font-style-bold-italic = false;
      font-style-italic = false;

      clipboard-paste-protection = false;
      confirm-close-surface = false;
      mouse-hide-while-typing = true;
      gtk-titlebar = false;

      #window-height = 35;
      #window-padding-x = 10;
      #window-padding-y = 10;
      #window-width = 120;
      window-decoration = false;
      window-theme = "ghostty";

      background-opacity = 1;
      minimum-contrast = 1;
      theme = "Catppuccin Mocha";
    };

    themes = {
    };
  };
}
