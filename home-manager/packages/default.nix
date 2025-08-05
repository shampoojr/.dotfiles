{ system, pkgs, inputs, ... }:
{

  imports = [
    ./programs.nix
  ];

  home.packages =
    (with pkgs; [
      asciiquarium
      btop
      dconf
      eww
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
      gimp
    ])

    ++ (with inputs; [
      zen-browser.packages."${system}".default
    ]);
}
