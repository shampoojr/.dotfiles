{
  inputs,
  pkgs,
  config,
  imports,
  ...
}:
{
  imports = [
    ./theme.nix
    ./config.nix
  ];
  programs.hyprpanel = {
    enable = true;
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
}
