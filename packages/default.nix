{ pkgs, config, inputs, system, ... }:let
in{

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

    ])
    ++ (with config.programs; [
      spicetify.spicedSpotify
    ]) 
    # With flake
    ++ (with inputs; [
    ]);

}
