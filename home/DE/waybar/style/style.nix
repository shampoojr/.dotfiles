{
  programs.waybar = {
    style = let
      # Catppuccin
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
      textinactive = "#818699";
      subtext1 = "#bac2de";
      subtext0 = "#a6adc8";
      overlay2 = "#9399b2";
      overlay1 = "#7f849c";
      overlay0 = "#6c7086";
      surface2 = "#585b70";
      surface1 = "#45475a";
      surface0 = "#313244";
      base = "#1e1e2e";
      mantle = "#181825";
      crust = "#11111b";

      #
      background = "${base}";
      foreground = "${text}";

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
    in ''

      * {
        font-family: "Symbols Nerd Font";
        font-weight: 800;
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
        -gtk-icon-shadow: none;
      }

      window {
        font-size: 20px;
      }

      window#waybar {
        background: transparent;
        border-radius: 14px;
      }

      #battery {
        border-radius: 14px;
        background: ${surface1};
      }

      #workspaces {
        background: ${surface1};
        border-radius: 10px;
        padding: 1px 12px;
        margin: 0px 0px 0px 5px;
      }

      #workspaces button.urgent {
        color: ${text};
      }

      #workspaces button.empty {
        color: ${textinactive};
      }

      #workspaces button.visible {
        color: ${green};
      }

      #workspaces button {
        background: transparent;
        color: ${text};
      }


      #backlight {
        background:${surface1};
      }

      #network {
        background: ${surface1};
      }

      #clock {
        background: ${surface1};
        border-radius: 10px;
        padding: 1px 12px;
        margin: 0px 5px 0px 0px;
      }

      #pulseaudio {
        background: ${surface1};
      }

      #idle_inhibitor {
      background: ${surface1};
      }

      #mpris,
      #memory,
      #idle_inhibitor,
      #battery,
      #pulseaudio,
      #network,
      #tray,
      #temperature,
      #backlight,
      #language {
        border-radius: 10px;
        opacity: 1;
        padding: 1px 12px;
        margin-right: 5px;
        color: ${text};
      }
    '';
  };
}
