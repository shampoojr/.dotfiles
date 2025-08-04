{
  inputs,
  pkgs,
  config,
  imports,
  ...
}:
{
  imports = [
    #./theme.nix
    ./config.nix
  ];

  programs.hyprpanel = {
    enable = true;
  };
}
