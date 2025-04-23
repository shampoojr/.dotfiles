{
  pkgs,
  config,
  inputs,
  system,
  ...
}:
let
in
{

  imports = [
    ./programs.nix
  ];

  home.packages =
    (with pkgs; [
      asciiquarium
      btop
      dconf
      dunst
      eww
      fastfetch
      freecad
      gh
      hyprpaper
      hyprpicker
      hyprshot
      mpdris2
      neo-cowsay
      playerctl
      ponysay
      rofi
      uv
    ])

    ++ (with config.programs; [
      spicetify.spicedSpotify
    ])
    
    # With flake
    ++ (with inputs; [
      zen-browser.packages."${system}".default
    ]);

}
