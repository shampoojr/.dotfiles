{ pkgs, inputs, config, ... }:
{
  imports = [
    ./binds.nix
    ./configs
    ./hyprland.nix
  ];

    wayland.windowManager.hyprland = {
      enable = true;
      systemd.variables = [ "--all" ];
    };
}
