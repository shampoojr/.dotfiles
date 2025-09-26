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
      text1 = "#4c4f69";
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
        color: ${text1};
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
          border-radius: 14px;
          background: ${red};
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
          background: ${pink};
          border-radius: 14px;
      }

      #workspaces button #workspaces.presistent {
          background: transparent;
      }


      #backlight {
      background:${teal};
      }

      #network {
        background: ${peach};
      }

      #clock {
        background: ${mauve};
      }

      #pulseaudio {
      background: ${green};
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
          opacity: 1;
          padding: 1px 12px;
          margin: 1px 3px 1px 0;
      }

    '';
  };
}
