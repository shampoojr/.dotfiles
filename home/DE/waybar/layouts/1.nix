{
  programs.waybar = {
    settings = {
      "laptop" = {
        exclusive = true;
        fixed-center = true;
        height = 40;
        layer = "top";
        margin-bottom = 0;
        margin-left = 0;
        margin-right = 0;
        margin-top = 5;
        mode = "dock";
        output = "eDP-1";
        name = "waybar";
        position = "top";
        reload_style_on_change = true;
        spacing = 10;
        start_hidden = false;
        width = 1920;

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

        battery = {
          bat = "BAT0";
          interval = "1";
          states = {
            good = 95;
            warning = 30;
            critical = 15;
          };
          format = "{capacity}% {icon}";
          format-full = "{capacity}% {icon}";
          format-charging = "{capacity}% <span color='#f9e2af'>󰂄</span>";
          format-plugged = "{capacity}% ";
          format-icons = {
            default = [
              "<span color='#f38ba8'>󰁺</span>"
              "<span color='#f6b8a3'>󰁻</span>"
              "<span color='#f9d2ab'>󰁼</span>"
              "<span color='#f9e2af'>󰁽</span>"
              "<span color='#d4debb'>󰁾</span>"
              "<span color='#b0e0c0'>󰁿</span>"
              "<span color='#b3e2a0'>󰂀</span>"
              "<span color='#a1e2b8'>󰂁</span>"
              "<span color='#9de3b5'>󰂂</span>"
              "<span color='#a6e3a1'>󰁹</span>"
            ];
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

        backlight = {
          format = "{percent}% {icon}";
          tooltip = false;
          tooltip-format = "{percent}%";
          format-icons = [
            "<span color='#45475a'></span>"
            "<span color='#4a4e65'></span>"
            "<span color='#4f5269'></span>"
            "<span color='#585a6b'></span>"
            "<span color='#606f77'></span>"
            "<span color='#6a6d7e'></span>"
            "<span color='#757d8b'></span>"
            "<span color='#7e8091'></span>"
            "<span color='#9194a4'></span>"
            "<span color='#a4a7b7'></span>"
            "<span color='#b7b9ca'></span>"
            "<span color='#c1c4d1'></span>"
            "<span color='#cdd6f4'></span>"
          ];
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
