{
  programs.waybar = {
    settings = {
      "laptop" = {
        exclusive = true;
        fixed-center = true;
        height = 45;
        layer = "top";
        margin-bottom = 0;
        margin-left = 0;
        margin-right = 0;
        margin-top = 0;
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
          "network"
          "backlight"
          "battery"
          "pulseaudio"
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
            spotify = "<span color='#1ED760'></span>";
            firefox = "<span color='#FF0033'></span>";
          };
        };

        "hyprland/window" = {
          rewrite = {

          };
        };

        upower = {
          native_path = "/org/freedesktop/UPower/devices/battery_BAT0";
          icon-size = 24;
          hide-if-empty = true;
          tooltip = true;
          tooltip-spacing = 20;
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
          format-charging = "{capacity}% <span color='#ffff00'>󱐋</span>";
          format-plugged = "{capacity}% ";
          format-icons = {
            default = [
              "<span color='#FF4C4C'>󰁺</span>"
              "<span color='#FF6F4C'>󰁻</span>"
              "<span color='#FF914C'>󰁼</span>"
              "<span color='#FFB24C'>󰁽</span>"
              "<span color='#FFDB4C'>󰁾</span>"
              "<span color='#D4FF4C'>󰁿</span>"
              "<span color='#A8FF4C'>󰂀</span>"
              "<span color='#7CFF4C'>󰂁</span>"
              "<span color='#50FF4C'>󰂂</span>"
              "<span color='#4CFF4C'>󰁹</span>"
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
          tooltip = true;
          tooltip-format = "{precent}%";
          format-icons = [
            "<span color='#3B2A2A'></span>"
            "<span color='#4D3B3B'></span>"
            "<span color='#6A4D4D'></span>"
            "<span color='#7A5C5C'></span>"
            "<span color='#A67D7D'></span>"
            "<span color='#C6AFAF'></span>"
            "<span color='#D6C6C6'></span>"
            "<span color='#E6D9D9'></span>"
            "<span color='#EDEFEF'></span>"
            "<span color='#F2F2F2'></span>"
            "<span color='#F7F7F7'></span>"
            "<span color='#FAFAFA'></span>"
            "<span color='#FFFFFF'></span>"
          ];
        };

        network = {
          format-wifi = "";
          format-ethernet = "";
          format-disconnected = "";
          tooltip = false;
          tooltip-format-disconnected = "Error";
          tooltip-format-wifi = "{essid} ({signalStrength}%) ";
          tooltip-format-ethernet = "{ifname} 🖧";
        };

        pulseaudio = {
          format = "{volume}% {icon} ";
          format-bluetooth = "{volume}% {icon} <span color='#09a5ff'></span>";
          format-muted = "<span color='#FF4C4C'></span>";
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
        clock = {
          format = "{:%H:%M}";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
          calendar = {
            mode = "year";
            mode-mon-col = 3;
            week-pos = "right";
            on-scroll = 1;
            format = {
              months = "<span color='#ffead3'><b>{}</b></span>";
              days = "<span color='#ecc6d9'><b>{}</b></span>";
              weeks = "<span color='#99ffdd'><b>W{}</b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              today = "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
            actions = {
              on-click-right = "mode";
              on-scroll-up = "shift_up";
              on-scroll-down = "shift_down";
            };
          };
        };
      };
    };
  };
}
