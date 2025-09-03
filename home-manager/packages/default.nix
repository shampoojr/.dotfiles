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
      gh
      hyprpaper
      hyprpicker
      mpdris2
      neo-cowsay
      playerctl
      ponysay
      rofi
      uv
    ])

    ++ (with inputs; [
      zen-browser.packages."${system}".default
    ]);
}
