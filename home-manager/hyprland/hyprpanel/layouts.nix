{ ... }:
{
  programs.hyprpanel = {
    settings = {
      bar.layouts = {
        "*" = {
          left = [
            "dashboard"
            "workspaces"
            "windowtitle"
          ];
          middle = [
            "media"
          ];
          right = [
            "volume"
            "battery"
            "network"
            "bluetooth"
            "systray"
            "clock"
            "notifications"
          ];
          "eDP-1" = {
            left = [
              "dashboard"
              "workspaces"
              "windowtitle"
              "cava"
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
    };
  };
}
