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
    ./layouts
  ];
  programs.hyprpanel = {
    enable = true;
    };
}
