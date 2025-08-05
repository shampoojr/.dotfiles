{ ... }:
{
  programs.hyprpanel = {
    settings = {
      theme = {
        bar.buttons.clock.enableBorder = true;
        bar = {
          buttons = {
            enableBorders = true;
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
          };
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
