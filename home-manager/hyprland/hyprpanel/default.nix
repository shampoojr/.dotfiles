{
<<<<<<< HEAD
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

=======
  imports,
  inputs,
  pkgs,
  ...
}:
let
in
{
  imports = [
    ./config.nix
    ./theme.nix
  ];
  programs.hyprpanel = {
    enable = true;
    package = inputs.hyprpanel.packages.${pkgs.system}.default;
>>>>>>> 7e9bc56ee8001467eb708629bd35166188857d56
  };
}
