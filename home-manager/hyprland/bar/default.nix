{ ... }:
{
  programs.waybar = {
    enable = true;

    settings = {

      main = {
        exclusive = true;
        fixed-center = true;
<<<<<<< HEAD
        height = 45;
        id = "main";
        output = "eDP-1";
=======
        height = 25;
>>>>>>> bf9a303 (Idk what i just did hope it doesnt break everything)
        layer = "top";
        margin-bottom = 0;
        margin-left = 0;
        margin-right = 0;
        margin-top = 0;
        mode = "float";
        name = "waybar";
        position = "top";
        reload_style_on_change = true;
        spacing = 10;
        start_hidden = false;
        width = 1920;

        modules-left = [
          "hyprland/workspaces"
          "cava"
        ];

        modules-center = [
          #"cava"
          "mpris"
        ];

        modules-right = [
          "tray"
          "network"
          "backlight"
          "battery"
          "pulseaudio"
          "clock"
        ];

        "hyprland/workspaces" = {
          "persistent-workspaces" = {
            "1" = [ ];
            "2" = [ ];
            "3" = [ ];
            "4" = [ ];
            "5" = [ ];
            "6" = [ ];
          };

        };

        "mpris" = {
          "format" = " {dynamic} {status_icon}";
          "interval" = 1;
          "dynamic-len" = 40;
          "status-icons" = {
            "playing" = "▶";
            "paused" = "⏸";
            "stopped" = "";
          };
          "dynamic-order" = [
            "title"
            "artist"
          ];
          "ignored-players" = [
            "firefox"
            "librewolf"
          ];
        };

        "hyprland/window" = {
          "rewrite" = {
            "LibreWolf" = "Librewolf";
          };
        };

        "battery" = {
          "bat" = "BAT0";
          "interval" = "1";
          "format" = "{capacity}% {icon}";
          "format-charging" = "{capacity}% {icon}󱐋";
          "format-icons" = {
            #"charging" = [
            #""
            #];

            "default" = [
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

        "cava" = {
          #        "cava_config"= "$HOME/.config/cava/config";
          "orientation" = "bottom";
          "framerate" = 120;
          "autosens" = 1;
          "sensitivity" = "100";
          "sample_rate" = 44100;
          "sample_bits" = 16;
          "channel" = 2;
          "autoconnect" = 2;
          "bars" = 14;
          "bar_spacing" = "5";
          "lower_cutoff_freq" = "50";
          "higher_cutoff_freq" = "10000";
          "method" = "pulse";
          "source" = "auto";
          "stereo" = true;
          "reverse" = false;
          "bar_delimiter" = 0;
          "monstercat" = true;
          "waves" = false;
          "noise_reduction" = "0.77";
          "input_delay" = 0;
          "format-icons" = [
            "▁"
            "▂"
            "▃"
            "▄"
            "▅"
            "▆"
            "▇"
            "█"
          ];
          "actions" = {
            "on-click-right" = "mode";
          };
        };

        "backlight" = {
          "format" = "{percent}% {icon}";
          "format-icons" = [
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
            ""
          ];
        };

        # "network" = {
        #   "format-wifi" = "";
        #   "format-ethernet" = "";
        #   "format-disconnected" = "";
        #   "tooltip-format-disconnected" = "Error";
        #   "tooltip-format-wifi" = "{essid} ({signalStrength}%) ";
        #   "tooltip-format-ethernet" = "{ifname} 🖧 ";
        # };

        "pulseaudio" = {
          "format" = "{volume:2}% {icon}";
          "format-bluetooth" = "{volume}% {icon}";
          "format-muted" = "";
          "format-icons" = {
            "headphones" = "";
            "default" = [
              ""
              ""
              ""
            ];
          };
          "scroll-step" = "5";
          "on-click-right" = "pavucontrol";
        };

      };
    };

    style =
      let
        active = "#FFFFFF";
        base = "#000000";
        empty = "#FFFFFF";
        fs = "18";
        hover = "#ededed";
        inactive = "#dbdbdb";
        text = "#FFFFFF";
      in
      ''
<<<<<<< HEAD

=======
        *{
        border:none;
        border-radius: 0;
        min-height:24px;
        }

        window.DP-5 {
        	font-size: 20px;
        	font-weight: 800;
        }

        window#waybar {
        	background: rgba(0,0,0,1);
        }

        #workspaces {
        background: #444;
        border-radius: 2rem;
        border: 1px solid white;
        }

        #workspace button {
        background:transparent;
        }
>>>>>>> bf9a303 (Idk what i just did hope it doesnt break everything)
      '';
  };
}
