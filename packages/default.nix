{ pkgs, config, ... }:
{
  home.packages = [
pkgs.dconf
config.programs.spicetify.spicedSpotify
];

}
