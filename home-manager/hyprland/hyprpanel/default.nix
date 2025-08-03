{
  inputs,
  pkgs,
  config,
  lib,
  ...
}:let
  key = import ../../../variables.nix {inherit lib;};
  #location = import ../../../variables.nix {inherit lib;};
  in
{
  programs.hyprpanel = {
    enable = true;

    settings = {
      bar = {
        launcher = {
          icon = "󱄅";
        };

        workspaces = {
          monitor_specific = false;
          numbered_active_indicator = "color";
          show_icons = true;
          show_numbered = false;
          showApplicationIcons = false;
          showWsIcons = false;
          workspaceMask = false;
          workspaces = "5";
        };
      };

      menus = {

        dashboard = {
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
          monitor = 2;
          timeout = "4000";
        };
      };

      theme = {
        bar = {
          menus = {
            border.location = "none";
            buttons = {
              enableBorders = true;
              workspaces = {
                smartHightlights = true;
              };
            };
            cards = "#1e1e2e";

            dashboard = {
              stats.enable_gpu = true;
            };
          };

          floating = true;
          transparent = true;
        };

        # font = {
        #   name = "FiraCode NF";
        #   size = "16px";
        # };

        osd = {
          orientation = "vertical";
          location = "right";
          active_monitor = false;
          monitor = "2";
        };
      };

      layout = {
        bar.layouts = {
          "HDMI-A-2" = {
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

          "DP-4" = {
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
          "DP-5" = {
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

      clock = {
        time = {
          format = ["%a" "%b" "%d" "%H:""%M:""%S" ];
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
