{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    dconf
    spotify
  ];

}
