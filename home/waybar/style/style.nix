{
  programs.waybar = {
    style =
      let

        # Colors
        red = "#FF0000";
        green = "#00FF00";
        blue = "#0000FF";
        yellow = "#FFFF00";
        cyan = "#00FFFF";
        pink = "#FF00FF";

        # Non-colors
        black = "#000000";
        white = "#FFFFFF";

        #
        background = "#000";
        foreground = "#f8f8f2";

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
                background: #000;
                color: #FFF;
            }
        }

        @keyframes batteryCritical {
            to {
                color: #FFF;
                background: transparent;
                border-color: #4b4b4b;
            }
        }


        * {
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
            box-shadow: inset 0 -3px transparent;
            border: none;
            border-radius: 0;
        }

        button:hover {
            background: inherit;
            box-shadow: inset 0 -3px #ffffff;
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
            color: #FFF;
        }

        #battery.charging,
        #battery.plugged {
            border-color: #FF0;
        }

        #battery.good:not(charging) {
            border-color: #0F0;
        }

        #battery.warning:not(charging) {
            border-color: #FF0;
        }

        #battery.critical:not(charging) {
            border-color: #F00;
            animation-name: batteryCritical;
            animation-duration: 0.5s;
            animation-timing-function: steps(12);
            animation-iteration-count: infinite;
            animation-direction: alternate;
        }

        #workspaces {
            background: transparent;
            border-radius: 14px;
            border-width: 3px;
            border-style: solid;
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
            border-radius: 14px;
            border-width: 3px;
            border-style: solid;
            opacity: 1;
            padding: 1px 12px;
            margin: 1px 3px 1px 0;
        }

      '';
  };
}
