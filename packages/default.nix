{ pkgs, config, ... }:
{

  imports = [
    ./programs.nix
  ];
  home.packages = [
    pkgs.dconf
    config.programs.spicetify.spicedSpotify
    pkgs.gh
  ];

}
