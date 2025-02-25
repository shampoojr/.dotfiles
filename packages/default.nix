{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    dconf
    spicetify
  ];

}
