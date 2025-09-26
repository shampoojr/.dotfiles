{
  services = {
    hyprpaper = {
      enable = true;
      settings = {
        ipc = "off";
        splash = false;
        splash_offset = 2.0;
        preload = [
          "~/Pictures/wallpapers/windows-error.jpg"
          "~/Pictures/wallpapers/rainbow-cat.png"
          "~/Pictures/wallpapers/nix-black-4k.png"
          "~/Pictures/wallpaper/NixBlack.jpg"
        ];
        wallpaper = [
          ",~/Pictures/wallpapers/nix-black-4k.png"
          "eDP-1,~/Pictures/wallpaper/NixBlack.jpg"
        ];
      };
    };
  };
}
