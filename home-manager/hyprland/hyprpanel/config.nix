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

        layouts = {
          "*" = {
            left = [
              "dashboard"
              "workspaces"
              "windowtitle"
            ];
            middle = [ "media" ];
            right = [
              "systray"
              "volume"
              "bluetooth"
              "clock"
              "notification"
            ];
          };

          "HDMI-A-2" = {
            extends = "*";
          };
          "DP-4" = {
            extends = "*";
          };
          "DP-5" = {
            extends = "*";
          };
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

      theme = {
        bar = {
          location = "top";
          floating = true;
          transparent = true;
          menus = {
            menu = {
              dashboard = {
                scaling = "100";
                confirmation_scaling = "100";
              };
              tooltip.scaling = "100";
              media.scaling = "100";
              volume.scaling = "100";
              network.scaling = "100";
              bluetooth.scaling = "100";
              battery.scaling = "100";
              clock.scaling = "100";
              notifications.scaling = "100";
              power.scaling = "90";
              popover.scaling = "100";
            };
            border.location = "none";
            enableShadows = false;
            shadow = "0px 0px 3px 1px #16161e";
            shadowMargins = "5px 5px";
            buttons = {
              seperator = {
                margins = "0.15em";
                width = "0.1em";
              };
              systray = {
                spacing = "0.5em";
                enableBorder = true;
              };
              media = {
                spacing = "0.5em";
                enableBorder = true;
              };
              battery = {
                spacing = "0.5em";
                enableBorder = true;
              };
              notification = {
                spacing = "0.5em";
                enableBorder = true;
              };
              dashboard = {
                spacing = "0.5em";
                enableBorder = true;
              };
              workspaces = {
                smartHighlight = true;
                spacing = "0.5em";
                fontsize = "1.2em";
                enableBorder = true;
                numbered_inactive_padding = "0.2em";
                numbered_active_highlight_padding = "0.2em";
                numbered_active_highlight_border = "0.2em";
                pill = {
                  radius = "1.9em * 0.6";
                  height = "4em";
                  width = "4em";
                  active_width = "1.2em";
                };
              };
              windowtitle = {
                spacing = "0.5em";
                enableBorder = true;
              };
              volume = {
                spacing = "0.5em";
                enableBorder = true;
              };
              network = {
                spacing = "0.5em";
                enableBorder = true;
              };
              bluetooth = {
                spacing = "0.5em";
                enableBorder = true;
              };
              enableBorders = true;
              workspaces = {
                smartHightlights = true;
              };
            };
            cards = "#1e1e2e";
          };

          font = {
            name = "FiraCode NF";
            size = "16px";
            weight = "700";
          };

          osd = {
            orientation = "vertical";
            location = "right";
            active_monitor = false;
            monitor = 2;
          };
        };
      };
    };
  };
}
