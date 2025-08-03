    programs.hyprpanel = {
    settings = {
      bar = {
        launcher = {
          autoDetectIcon = true;
          icon = "󱄅";
        };

        workspaces = {
          monitor_specific = true;
          numbered_active_indicator = "color";
          show_icons = false;
          show_numbered = true;
          workspaces = "5";
        };

        layouts = {
          "0" = {
            left = [
              "dashboard"
              "workspace"
              "windowtitle"
            ];
            middle = [ "media" ];
            right = [
              "volume"
              "clock"
              "notification"
            ];
          };

          "1" = {
            left = [
              "dashboard"
              "workspace"
              "windowtitle"
            ];
            middle = [ "media" ];
            right = [
              "volume"
              "clock"
              "notification"
            ];
          };
          "2" = {
            left = [
              "dashboard"
              "workspace"
              "windowtitle"
            ];
            middle = [ "media" ];
            right = [
              "volume"
              "clock"
              "notification"
            ];
          };
        };
      };

      menus = {
        dashboard = {
          stats.enable_gpu = true;
          powermenu.avatar.image = "/home/shampoojr/Pictures/Robloxchar.png";
          shortcuts = {
            left = {
              shortcut1 = {
                command = "zen";
                tooltip = "zen-browser";
                icon = "";
              };
            };
          };
        };
        notification = {
          monitor = "2";
          timeout = "4000";
        };
      };

      theme = {
        bar = {
          menus = {
            border.location = "none";
            buttons = {
              systray = {
                enableBorder = true;
              };
              media = {
                enableBorder = true;
              };
              battery = {
                enableBorder = true;
              };
              notification = {
                enableBorder = true;
              };
              dashboard = {
                enableBorder = true;
              };
              workspaces = {
                enableBorder = true;
              };
              windowtitle = {
                enableBorder = true;
              };
              volume = {
                enableBorder = true;
              };
              network = {
                enableBorder = true;
              };
              bluetooth = {
                enableBorder = true;
              };


              enableBorders = false;
              workspaces = {
                smartHightlights = true;
              };
            };
            cards = "#1e1e2e";

          };

          floating = true;
          transparent = true;

          # font = {
          #   name = "FiraCode NF";
          #   size = "16px";
          # };

          osd = {
            orientation = "vertical";
            location = "right";
            active_monitor = false;
            monitor = 2;
          };
        };

        clock = {
          format = [
            "%a"
            "%b"
            "%d"
            "%H:"
            "%M:"
            "%S"
          ];
          time = {

            military = true;
            hideSeconds = true;
          };

          weather = {
            interval = "5000";
            unit = "metric";
          };
        };
      };
    };
    }