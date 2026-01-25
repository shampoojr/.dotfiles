{pkgs, ...}: {
  stylix = {
    targets = {
      hyprpaper = {
        enable = true;
        image.enable = true;
      };
    };
    image = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/zhichaoh/catppuccin-wallpapers/refs/heads/main/os/nix-black-4k.png";
      hash = "sha256-HRZYeKDmfA53kb3fZxuNWvR8cE96tLrqPZhX4+z4lZA=";
    };
  };
}
