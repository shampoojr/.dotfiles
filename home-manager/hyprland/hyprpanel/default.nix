{
  imports,
  ...
}:
let
in
{
  imports = [
    ./config.nix
  ];
  programs.hyprpanel = {
    enable = true;
  };
}
