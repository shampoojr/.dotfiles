{ pkgs, inputs, config, ... }:
{
  imports = [
    ./binds.nix
    ./configs
  ];

    wayland.windowManager.hyprland = {
      enable = true;
      systemd.variables = [ "--all" ];
    };
}
