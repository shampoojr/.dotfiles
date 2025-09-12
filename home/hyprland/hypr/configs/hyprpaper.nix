{
  services = {
    hyprpaper = {
      enable = true;
      settings = {
        ipc = "off";
        splash = false;
        splash_offset = 2.0;
        preload = [
          "~/Pictures/anime-girl-girly-pink-fantasy.jpg"
          "~/Pictures/wallpaper/NixBlack.jpg"
        ];
        wallpaper = [
          "DP-5,~/Pictures/anime-girl-girly-pink-fantasy.jpg"
          "eDP-1,~/Pictures/wallpaper/NixBlack.jpg"
        ];
      };
    };
  };
}
