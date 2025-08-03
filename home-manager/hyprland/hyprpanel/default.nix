{
  imports,
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
  };
}
