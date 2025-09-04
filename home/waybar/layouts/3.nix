{
  programs.waybar = {
    settings = {
      "3" = {
        output = "HDMI-A-2";
        exclusive = true;
        fixed-center = true;
        height = 25;
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
          "mpris"
        ];

        modules-right = [
          "clock"
        ];
        "hyprland/workspaces" = {
          persistent-workspaces = {
            "1" = [ ];
            "2" = [ ];
            "3" = [ ];
            "4" = [ ];
            "5" = [ ];
            "6" = [ ];
          };

        };

        mpris = {
          format = "{player_icon} {dynamic} {status_icon} ";
          tooltip = true;
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
            spotify = " ";
            firefox = " ";
          };
        };

        "hyprland/window" = {
          rewrite = {

          };
        };

        battery = {
          bat = "BAT0";
          interval = "1";
          format = "{capacity}% {icon}";
          format-charging = "{capacity}% {icon}󱐋";
          format-icons = {
            #"charging" = [
            #""
            #];

            default = [
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
          format-icons = [
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

        network = {
          format-wifi = " ";
          format-ethernet = " ";
          format-disconnected = " ";
          tooltip = false;
          tooltip-format-disconnected = "Error";
          tooltip-format-wifi = "{essid} ({signalStrength}%)  ";
          tooltip-format-ethernet = "{ifname} 🖧 ";
        };

        pulseaudio = {
          format = "{volume}% {icon} ";
          format-bluetooth = "{volume}% {icon} ";
          format-source-muted = "";
          format-icons = {
            headphones = "";
            handsfree = "";
            headset = "";
            phone = "";
            phone-muted = "";
            portable = "";
            car = "";
            default = [
              ""
              ""
              ""
            ];
          };
          scroll-step = "5";
          on-click-right = "pavucontrol";
        };

      };

    };
  };
}
