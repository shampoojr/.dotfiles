{ pkgs, ... }:
{
  home.packages = with pkgs; [
    dconf
  ];

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
      };
    };
  };

  gtk = {
    enable = true;

    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };

    theme = {
      name = "catppuccin-mocha-pink-compact"; # Choose your preferred variant
      package = pkgs.catppuccin-gtk.override {
        accents = [ "pink" ]; # Customize accents as needed
        size = "compact"; # Adjust size if desired
        variant = "mocha"; # Select the theme variant
      };
      # package = pkgs.gnome-themes-extra;
      # name = "Adwaita-dark";
    };

    font = {
      name = "Sans";
      size = 11;
    };
  };
}
