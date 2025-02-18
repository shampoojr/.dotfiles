{ pkgs, ... }:
{
  programs.waybar = {
    enable = true;

    settings = {
      waybar = {
        layer = "top";
        position = "top";
        reload_style_on_change = true;
        height = 45;
        width = 1920;
        margin-top = 5;
        margin-left = 0;
        margin-right = 0;
        margin-bottom = 0;
        spacing = 10;
        name = "waybar";
        mode = "dock";
        start_hidden = false;
        exclusive = true;
        fixed-center = true;

        modules-left = [
          "custom/menu"
          "hyprland/workspaces"
        ];

        modules-center = [ ];

        modules-right = [
          "tray"
          "network"
          "backlight"
          "battery"
          "pulseaudio"
          "clock"
        ];

        "battery" = {
          "bat" = "BAT0";
          "format" = "{capacity}% {icon}";
          "format-charging" = "{capacity}% {icon}󱐋";
          "format-plugged" = "{capacity}% {icon}󱐋";
          "format-icons" = [
            "󰁺"
            "󰁻"
            "󰁼"
            "󰁽"
            "󰁾"
            "󰁿"
            "󰂀"
            "󰂁"
            "󰂂"
            "󰁹"
          ];
        };
      };
    };

    style =
      let
        rosewater = "#f5e0dc";
        flamingo = "#f2cdcd";
        pink = "#f5c2e7";
        mauve = "#cba6f7";
        red = "#f38ba8";
        maroon = "#eba0ac";
        peach = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        teal = "#94e2d5";
        sky = "#89dceb";
        sapphire = "#74c7ec";
        blue = "#89b4fa";
        lavender = "#b4befe";
        text = "#cdd6f4";
        subtext1 = "#bac2de";
        subtext0 = "#a6adc8";
        overlay2 = "#9399b2";
        overlay1 = "#7f849c";
        overlay0 = "#6c7086";
        surface2 = "#585b70";
        surface1 = "#45475a";
        surface0 = "#313244";
        base = "#000000";
        mantle = "#000000";
        crust = "#000000";
      in
      ''
        * {
          min-height: 0px;
          font-family: "Nerd Font Symbols";
        }

        window#waybar {
          background-color: transparent;
        }

        window#waybar > box {
          border-radius: 10px;
          margin: 4px 4px 4px 4px;
          background-color: ${base};
          box-shadow: 0px 0px 3px 0px ${base};
        }

      '';
  };
}
