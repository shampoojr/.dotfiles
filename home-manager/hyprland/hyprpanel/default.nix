{
  imports,
  inputs,
  pkgs,
  ...
}:
{
  imports = [
    #./config.nix
    #./theme.nix
  ];
  programs.hyprpanel = {
    enable = true;
    package = inputs.hyprpanel.packages.${pkgs.system}.default;
  };
}
