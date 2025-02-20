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
          #"tray"
          "network"
          "backlight"
          "battery"
          "pulseaudio"
          "clock"
        ];

        "workspaces" = {
          
        };

        "battery" = {
          "bat" = "BAT0";
          "format" = "{capacity}% {icon}";
          "format-charging" = "{capacity}% {icon}󱐋";
          "format-plugged" = "{capacity}% {icon}󱐋";
          "format-icons" = {
            #"plugged" = [
              #"󱐋"
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

        "backlight" = {
          "format" = "{percent}% {icon}";
          "format-icons" = ["" "" "" "" "" "" "" "" "" "" "" "" ""];
        };

            "network" = {
            "format-wifi"= "";
            "format-ethernet"="";
            "format-disconnected"= "";
            "tooltip-format-disconnected"= "Error";
            "tooltip-format-wifi"= "{essid} ({signalStrength}%) ";
            "tooltip-format-ethernet"= "{ifname} 🖧 ";
            "on-click"= "kitty nmtui";
        };

      	"pulseaudio"= {
		"format"= "{volume:2}% {icon}";
		"format-bluetooth"= "{volume}% {icon}";
		"format-muted"= "";
		"format-icons"= {
			"headphones"= "";
			"default"= [
        ""
				""
				""
			];
		};
		"scroll-step"= "5";
		"on-click-right"= "pavucontrol";
	};

      };
    };

    style =
      let
        text = "#FFFFFF";
        active = "#FFFFFF";
        inactive = "#FFFFFF";
        hover = "#5F5F5F";
        empty = "#FFFFFF";
        base = "#000000";
      in
      ''
        * {
          min-height: 0px;
          font-weight: bolder;
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

        tooltip {
          background-color: ${base};
          border-radius: 10px;
        }

        #workspaces {
          font-size: 0px;
          background: transparent;
          margin-top: 3px;
          margin-bottom: 3px;
          padding: 10px 0px;
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
          font-size: 13px;
        }

        #custom-showtray {
          font-family: "FiraCode Nerd Font";
          font-size: 14px;
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
          padding-right: 2px;
        }
      '';
  };
}
