{ ... }:
{
  imports = [
    ./layouts
    ./style
  ];
  programs.waybar = {
    enable = true;
  };
}
