{ pkgs, config, ... }:
{

  imports = [
    ./programs.nix
  ];
  home.packages = [
    pkgs.dconf
    pkgs.mpdris2
    config.programs.spicetify.spicedSpotify
    pkgs.gh
    pkgs.uv
    pkgs.playerctl
    #inputs.nixvim-config.packages.${system}.default 
  ];

}
