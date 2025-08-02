{
  pkgs,
  config,
  inputs,
  flake,
  system,
  ...
}:
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

    # ++ (with config.programs; [
    #   spicetify.spicedSpotify.packages."${system}".default
    # ])

    ++ (with inputs; [
      zen-browser.packages."${system}".default
    ]);
}
