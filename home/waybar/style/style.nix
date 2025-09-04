{
  programs.waybar = {
    style =
      let

        # Colors
        red = "#FF0000FF";
        green = "#00FF00FF";
        blue = "#0000FFFF";
        yellow = "#FFFF00FF";

        # Opacity
        "5" = "";
        "25" = "";
        "50" = "";
        "75" = "";
        "100" = "";

        #
        background = "";
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
        critical = "${red}";
        warning = "${yellow}";

      in
      ''
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

                window {
                    font-size: 20px;
                    font-weight: 800;
                }

                window#waybar {
                    background: transparent;
                }

                #workspaces {
                    background: #444;
                    border-radius: 5px;
                    border: 1px solid white;
                }

                #workspaces button #workspaces.presistent {
                    background: transparent;
                }

                #memory,
                #clock,
                #battery,
                #pulseaudio,
                #network,
                #tray,
                #temperature,
                #backlight,
                #language {
                    background: @background;
                    opacity: 1;
                    padding: 0px 5px;
                    margin: 2px 0px 2px 0px;
                }
      '';
  };
}
