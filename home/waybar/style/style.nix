{
  programs.waybar = {
    style =
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

        # Workspaces
        workspace_background = "";
        workspace_button = "";
        workspace_active = "${green}";
        workspace_active_backround = "";
        workspace_urgent = "${red}";
        workspace_urgent_background = "";
        workspace_hover = "";
        workspace_hover_background = "";

        # Warnings
        good = "${green}";
        critical = "${red}";
        warning = "${yellow}";

      in
      ''
        @keyframes blink {
            to {
                background: ${base};
                color: ${surface0};
            }
        }

        @keyframes batteryCritical {
            to {
                color: ${surface0};
                background: transparent;
                border-color: ${mantle};
            }
        }


        * {
            color: ${surface0};
            font-family: "Symbols Nerd Font";
            border: none;
            border-radius: 0;
            min-height: 24px;
            border: none;
            border-radius: 0;
            min-height: 0;
            margin: 0;
            padding: 0;
            box-shadow: none;
            text-shadow: none;
            icon-shadow: none;
        }

        button {
            padding: 10px;
            box-shadow: inset 0 -3px transparent;
            border: none;
            border-radius: 0;
        }

        button:hover {
            padding: 10px;
            background: inherit;
            box-shadow: inset 0 -3px ${surface0};
        }

        window {
            font-size: 20px;
            font-weight: 800;
        }

        window#waybar {
            background: transparent;
        }

        #battery {
            border-width: 3px;
            border-style: solid;
            border-radius: 14px;
            background: transparent;
        }

        #battery.charging,
        #battery.plugged {
            border-color: ${yellow};
        }

        #battery.good:not(charging) {
            border-color: ${green};
        }

        #battery.warning:not(charging) {
            border-color: ${yellow};
        }

        #battery.critical:not(charging) {
            border-color: ${red};
            animation-name: batteryCritical;
            animation-duration: 0.5s;
            animation-timing-function: steps(12);
            animation-iteration-count: infinite;
            animation-direction: alternate;
        }

        #workspaces {
            background: ${teal};
            border-radius: 14px;
            border-width: 3px;
        }

        #mpris {
            background: ${yellow};
            border-radius: 14px;
            border-width: 3px;

        }

        #clock {
            background: ${blue};
            border-radius: 14px;
            border-width: 3px;

        }

        #pulseaudio {
            background: ${green};
            border-radius: 14px;
            border-width: 3px;

        }

        #network {
            background: ${pink};
            border-radius: 14px;
            border-width: 3px;

        }


        #workspaces button #workspaces.presistent {
            background: transparent;
        }

        #mpris,
        #workspaces,
        #memory,
        #clock,
        #battery,
        #pulseaudio,
        #network,
        #tray,
        #temperature,
        #backlight,
        #language {
            opacity: 1;
            padding: 1px 12px;
            margin: 1px 3px 1px 0;
        }
      '';
  };
}
