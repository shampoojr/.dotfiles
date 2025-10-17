{
  # Services
  services = {
    # Login
    displayManager.sddm = {
      enable = true;
      extraPackages = with pkgs; [
        sddm-astronaut
      ];
      package = pkgs.kdePackages.sddm;
      theme = "sddm-astronaut-theme";
    };

    # Keyring
    gnome.gnome-keyring.enable = true;

    # Xserver
    xserver = {
      enable = true;

      excludePackages = with pkgs; [ xterm ];

      videoDrivers = [ "nvidia" ];

      # Keyboard layout
      xkb = {
        layout = "no";
        variant = "winkeys";
      };

    };

    # Audio
    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };

    # Printing
    printing.enable = true;

    # Flatpak
    flatpak.enable = true;

    # Image previews
    gvfs.enable = true;
    tumbler.enable = true;
  };
}
