{
  system,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./programs.nix
  ];

  home.packages =
    (with pkgs; [
      asciiquarium
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
      prismlauncher
      #zen-browser
    ])
    ++ (with inputs; [
      #zen-browser.packages."${system}".default
    ]);
}
