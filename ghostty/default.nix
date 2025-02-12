{
  ...
}:
{
  programs.ghostty = {
    enable = true;

    settings = {
      keybind = "ctrl+shift+R=reload_config";

      font-family = "'Symbols Nerd Font'";
      font-size = 15;
      font-style-bold = true;
      font-style-italic = false;
      font-style-bold-italic = false;
      font-style = true;
      bold-is-bright = true;

      confirm-close-surface = false;
      mouse-hide-while-typing = true;
      clipboard-paste-protection = false;

      window-decoration = false;
      window-theme = "ghostty";
      #window-width = 120;
      #window-height = 35;
      #window-padding-x = 10;
      #window-padding-y = 10;

      background = "000000";
      foreground = "ffffff";
      background-opacity = 0.4;
      minimum-contrast = 2;
      theme = "iTerm2 Default";
    };

    themes = {

    };
  };
}
