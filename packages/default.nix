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
      dconf
      mpdris2
      gh
      uv
      playerctl
      freecad
      ponysay
      neo-cowsay
      btop
      hyprpaper
      hyprpicker
      hyprshot
      rofi
      dunst
      eww
      fastfetch
      asciiquarium
    ])

    ++ (with config.programs; [
      spicetify.spicedSpotify
    ])
    # With flake
    ++ (with inputs; [
      zen-browser.packages."${system}".default
    ]);

}
