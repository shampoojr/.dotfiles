{
  system,
  pkgs,
  inputs,
  ...
}:
{

  imports = [
    ./programs.nix
  ];

  home.packages =
    (with pkgs; [

      nix-output-monitor
      hyprpaper
      hyprpicker

      # Players
      mpdris2
      playerctl

      # Utils
      rofi
      uv
      glow
      gh
      eww
      dconf

      # Fun
      ponysay
      neo-cowsay
      asciiquarium

      # System monitor
      sysstat
      btop
      ethtool
      lm_sensors
      pciutils
      usbutils

      # FileManager
      ranger
      nnn

      # Archives
      zip
      xz
      unzip
      p7zip

      #IconThemes
      papirus-icon-theme
    ])

    ++ (with inputs; [
      zen-browser.packages."${system}".default
    ]);
}
