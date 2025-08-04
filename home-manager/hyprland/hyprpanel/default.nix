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
    ./layouts.nix
  ];

  programs.hyprpanel = {
    enable = true;
  };
}
