{ ... }:
{
  programs.waybar = {
    enable = true;

    settings = {
      waybar = {
        exclusive = true;
        fixed-center = true;
        height = 45;
        layer = "top";
        margin-bottom = 0;
        margin-left = 0;
        margin-right = 0;
        margin-top = 0;
        mode = "dock";
        name = "waybar";
        position = "top";
        reload_style_on_change = true;
        spacing = 10;
        start_hidden = false;
        width = 3440;

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
        * {
          padding: 0;
          margin: 0;
          border: 0;
          min-height: 0px;
          font-weight: bolder;
          font-family: "Symbols Nerd Font";
        }

        window#waybar {
          background-color: transparent;
        }

        window#waybar > box {
          border-radius: 0px;
          margin: 0px 0px 3px 0px;
          background-color: ${base};
          box-shadow: 0px 0px 0px 0px ${base};
        }

        tooltip {
          background-color: ${base};
          border-radius: 10px;
        }

        #workspaces {
          font-size: 0px;
          background: transparent;
          margin: 5px 5px 5px 1px;
          padding: 10px 0px;
          padding-left: 10px;
          padding-right: 10px;
        }

        #workspaces button {
          padding: 0px;
          margin: 0px 5px;
          min-width: 10px;
          border-radius: 10px;
          background: ${inactive};
          transition: all 0.3s ease-in-out;
        }

        #workspaces button.empty {
          background: ${empty};
        }

        #workspaces button.active {
          background: ${active};
          min-width: 40px;
          background-size: 400% 400%;
        }

        #workspaces button:hover {
          background: ${hover};
          min-width: 40px;
          background-size: 400% 400%;
        }

        #window,
        #battery,
        #backlight,
        #network,
        #pulseaudio,
        #clock {
          font-weight: bolder;
          font-family: "Symbols Nerd Font";
          font-size: ${fs}px;
        }

        #custom-showtray {
          font-family: "FiraCode Nerd Font";
          font-size: ${fs}px;
          color: ${text};
          padding-left: 2px;
          padding-right: 2px;
        }

        #tray {
          padding-left: 2px;
          padding-right: 2px;
        }

        #backlight {
        color: ${text};
        padding-left: 2px;
        padding-right: 2px;
        }

        #network {
          color: ${text};
          padding-left: 2px;
          padding-right: 2px;
        }

        #pulseaudio {
          color: ${text};
          padding-left: 2px;
          padding-right: 2px;
        }

        #battery {
        color: ${text};
        padding-left: 2px;
        padding-right: 2px;
        }

        #clock {
          color: ${text};
          margin-right: 2px;
          padding-left: 2px;
          padding-right: 10px;
        }
      '';
  };
}