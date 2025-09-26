{ ... }:
let # Colors
  blue = "#89b4fa";
  green = "#a6e3a1";
  pink = "#f5c2e7";
  red = "#f38ba8";
  rosewater = "#f5e0dc";
  flamingo = "#f2cdcd";
  mauve = "#cba6f7";
  maroon = "#eba0ac";
  peach = "#fab387";
  sky = "#89dceb";
  sapphire = "#74c7ec";
  lavender = "#b4befe";
  teal = "#94e2d5";
  yellow = "#f9e2af";

  #
  base = "#1e1e2e";
  text = "#cdd6f4";
  subtext0 = "#a6adc8";
  subtext1 = "#bac2de";
  overlay0 = "#6c7086";
  overlay1 = "#7f849c";
  overlay2 = "#9399b2";
  surface0 = "#313244";
  surface1 = "#45475a";
  surface2 = "#585b70";
  mantle = "#181825";
  crust = "#11111b";
in
{
  services.dunst = {
    enable = true;

    # iconTheme = {
    #   name = "Papirus-Dark";
    #   size = "32x32";
    #   package = "pkgs.papirus-icon-theme";
    # };

    settings = {
      global = {
        corners = "all";
        corner_radius = "14";
        width = "300";
        height = "300";
        offset = "10,300";
        origin = "top-right";
        frame_width = "2";
        sort = "yes";
        indicate_hidden = "yes";

        progress_bar = true;
        progress_bar_horizontal_alignment = "center";

      };

      urgency_normal = {
        background = "${surface0}";
        foreground = "${text}";
        timeout = 10;
      };
    };
  };
}
