{ ... }:
{
  programs.hyprlock = {
    enable = true;
    importantPrefixes = [ ];
    extraConfig = '''';
    settings = {
      general = {
        disable_loading_bar = true;
        hide_cursor = true;
        no_fade_in = true;
      };
      input-field = [
        {
          dots_center = true;
          fade_on_empty = false;
          font_color = "rgb(202, 211, 245)";
          inner_color = "rgb(91, 96, 120)";
          monitor = "eDP-1";
          outer_color = "rgb(24, 25, 38)";
          outline_thickness = 5;
          position = "0, -80";
          shadow_passes = 2;
          size = "200, 50";
        }
      ];
    };
  };
}
