{ ... }:
let
  # Colors
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
  programs.waybar = {
    settings = {
      "1" = {
        exclusive = true;
        fixed-center = true;
        height = 45;
        layer = "top";
        margin-bottom = 0;
        margin-left = 0;
        margin-right = 0;
        margin-top = 5;
        mode = "dock";
        output = "DP-5";
        name = "waybar";
        position = "top";
        reload_style_on_change = true;
        spacing = 10;
        start_hidden = false;
        width = 3440;
        id = "main";

        modules-left = [
          "hyprland/workspaces"
        ];

        modules-center = [
          "mpris"
        ];

        modules-right = [
          "network"
          "pulseaudio"
          "clock"
        ];

        "hyprland/workspaces" = {
          persistent-workspaces = {
            "1" = [ ];
            "2" = [ ];
            "3" = [ ];
            "4" = [ ];
            "5" = [ ];
          };
        };

        mpris = {
          format = "{player_icon} {dynamic} {status_icon} ";
          tooltip = true;
          interval = 1;
          dynamic-len = 40;
          status-icons = {
            playing = "▶";
            paused = "⏸";
            stopped = "";
          };

          dynamic-seperator = [
            "-"
          ];

          dynamic-order = [
            "title"
            "artist"
          ];

          player-icons = {
            default = " ";
            spotify = "";
            firefox = "";
          };
        };

        "hyprland/window" = {
          rewrite = {

          };
        };

        cava = {
          orientation = "bottom";
          framerate = 120;
          autosens = 1;
          sensitivity = "100";
          sample_rate = 44100;
          sample_bits = 16;
          channel = 2;
          autoconnect = 2;
          bars = 14;
          bar_spacing = "5";
          lower_cutoff_freq = "50";
          higher_cutoff_freq = "10000";
          method = "pulse";
          source = "auto";
          stereo = true;
          reverse = false;
          bar_delimiter = 0;
          monstercat = true;
          waves = false;
          noise_reduction = "0.77";
          input_delay = 0;
          format-icons = [
            "▁"
            "▂"
            "▃"
            "▄"
            "▅"
            "▆"
            "▇"
            "█"
          ];

          actions = {
            on-click-right = "mode";
          };
        };

        network = {
          format-wifi = "";
          format-ethernet = "󰈀";
          format-disconnected = "";
          tooltip = false;
          tooltip-format-disconnected = "Error";
          tooltip-format-wifi = "{essid} ({signalStrength}%) ";
          tooltip-format-ethernet = "{ifname} 🖧";
        };

        pulseaudio = {
          format = "{volume}% {icon} ";
          format-bluetooth = "{volume}% {icon} ";
          format-muted = "";
          format-icons = {
            headphones = "";
            handsfree = "";
            headset = "";
            phone = "";
            phone-muted = "";
            portable = "";
            car = "";
            default = [
              ""
              ""
              ""
            ];
          };

          scroll-step = "5";
          on-click-right = "pavucontrol";
        };
        clock = {
          format = "{:%H:%M}";
        };
      };
    };
  };
}
