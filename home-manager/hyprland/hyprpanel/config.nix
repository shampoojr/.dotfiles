{ imports, ... }:
{
  programs.hyprpanel = {
    settings = {
      scalingPriority = "hyprland";
      tear = false;
      terminal = "$TERM";
      hyprpanel = {
        restartAgs = true;
        restartCommand = "hyprpanel -q; hyprpanel";
        useLazyLoading = false;
      };

      bar = {
        autoHide = "never";
        launcher = {
          autoDetectIcon = true;
          #icon = "󱄅";
          scrollUp = "";
          scrollDown = "";
          rightClick = "";
          middleClick = "";
        };

        clock = {
          showIcon = true;
          showTime = true;
          scrollUp = "";
          scrollDown = "";
          rightClick = "";
          middleClick = "";
          format = "%a %d %b %H:%M:%S";
        };

        systray = {
          ignore = [
            "blueman"
            "nm-applet"
          ];
          customIcons = [ ];
        };

        notifications = {
          scrollUp = "";
          scrollDown = "";
          rightClick = "";
          middleClick = "";
          hideCountWhenZero = true;
          show_total = true;
        };

        media = {
          format = "{artist: - }{title}";
          truncation_size = "30";
          show_active_only = true;
        };

        workspaces = {
          applicationIconMap = { };
          applicationIconOncePerWorkspace = true;
          icons = {
            active = "";
            occupied = "";
            available = "";
          };
          ignored = "";
          monitorSpecific = false;
          numbered_active_indicator = "color";
          reverse_scroll = false;
          scrollspeed = "5";
          show_icons = false;
          show_numbered = true;
          showAllActive = true;
          showApplicationIcons = false;
          showWsIcons = false;
          spacing = "1";
          workspaceMask = false;
          workspaces = "9";
        };

      };

      menus = {
        clock = {
          time = {
            military = true;
            hideSeconds = true;
          };
          weather = {
            interval = "5000";
            unit = "metric";
          };
        };
        transition = "crossfade";
        transitionTime = "200";
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
    };
  };
}
