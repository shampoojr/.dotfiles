{ pkgs, config, ... }:
{

  imports = [
    ./programs.nix
  ];
  home.packages =
    (with pkgs; [
      dconf
      mpdris2
      gh
      uv
      playerctl
      freecad
      #inputs.nixvim-config.packages.${system}.default
    ])
    ++ (with config.programs; [
      spicetify.spicedSpotify
    ]);

}
