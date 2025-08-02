{ config, pkgs, ... }:
{

  home.packages = with pkgs; [
    dconf
  ];
  
  home.pointerCursor = {
    gtk.enable = true;
    # x11.enable = true;
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
      package = pkgs.gnome-themes-extra;
      name = "Adwaita-dark";
    };

    # iconTheme = {
    #   package = pkgs.adwaita-icon-theme;
    #   name = "Adwaita-dark";
    # };

    font = {
      name = "Sans";
      size = 11;
    };
  };

}
