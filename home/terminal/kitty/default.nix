{...}: {
  programs = {
    kitty = {
      enable = true;
      themeFile = "Catppuccin-Mocha";
      enableGitIntegration = true;
      shellIntegration.enableZshIntegration = true;
      settings = {
        font_size = 24;
        font_features = "FiraCode-Bold +zero";
        tab_bar_min_tabs = 1;
        tab_bar_edge = "bottom";
        tab_bar_style = "powerline";
        tab_powerline_style = "slanted";
        tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";
      };
    };
  };
}
