{ ... }:
{
  programs.hyprpanel = {
    settings = {
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
          };
        };
      };
    };
  };
}
