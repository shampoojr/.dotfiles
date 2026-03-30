{
  programs.waybar = {
    settings = {
      "1" = {
        exclusive = true;
        fixed-center = true;
        height = 40;
        layer = "top";
        margin-bottom = 0;
        margin-left = 0;
        margin-right = 0;
        margin-top = 5;
        mode = "dock";
        output = "DP-1";
        name = "waybar";
        position = "top";
        reload_style_on_change = true;
        spacing = 10;
        start_hidden = false;
        width = 3840;

        modules-left = [
          "hyprland/workspaces"
        ];

        modules-center = [
          "mpris"
        ];

        modules-right = [
          "idle_inhibitor"
          "network"
          "backlight"
          "battery"
          "pulseaudio"
          "clock"
        ];

        "hyprland/workspaces" = {
          persistent-workspaces = {
            "*" = [
              1
              2
              3
              4
              5
            ];
          };
        };

        idle_inhibitor = {
          format = "{icon}";
          format-icons = {
            activated = "";
            deactivated = "";
          };
        };

        mpris = {
          format = "{player_icon} {dynamic} {status_icon} ";
          tooltip = false;
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
            # spotify = "";
            # firefox = "";
          };
        };

        "hyprland/window" = {
          rewrite = {
          };
        };

        network = {
          format-wifi = "<span color='#89b4fa'></span>";
          format-ethernet = "";
          format-disconnected = "";
          tooltip = false;
          tooltip-format-disconnected = "Error";
          tooltip-format-wifi = "{essid} ({signalStrength}%) ";
          tooltip-format-ethernet = "{ifname} 🖧";
        };

        pulseaudio = {
          format = "{volume}% {icon} ";
          format-bluetooth = "{volume}% {icon} <span color='#89b4fa'></span>";
          format-muted = "<span color='#f38ba8'></span>";
          format-icons = {
            default = [
              "<span color='#f38ba8'></span>"
              "<span color='#f6b1a0'></span>"
              "<span color='#f9c5a6'></span>"
              "<span color='#f9d2ab'></span>"
              "<span color='#f9e2af'></span>"
              "<span color='#d4debb'></span>"
              "<span color='#b0e0c0'></span>"
              "<span color='#a4e2b5'></span>"
              "<span color='#9fe2b3'></span>"
              "<span color='#94e3af'></span>"
              "<span color='#8ee3a7'></span>"
              "<span color='#a6e3a1'></span>"
            ];
            tooltip = false;
          };
          tooltip = false;
          scroll-step = "5";
          on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@";
          on-click-right = "pavucontrol";
        };

        clock = {
          format = "{:%H:%M}";
          tooltip = false;
        };
      };
    };
  };
}
