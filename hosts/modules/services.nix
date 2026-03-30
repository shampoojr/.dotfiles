{
  inputs,
  pkgs,
  ...
}: {
  # Services
  services = {
    # Mice
    ratbagd = {
      enable = true;
    };

    #OC
    lact = {
      enable = true;
      settings = {};
    };

    #desktopManager.plasma6.enable = true;

    # Login
    displayManager = {
      sddm = {
        wayland.enable = true;
        wayland.compositor = "kwin";
        enable = true;

        extraPackages = (
          with pkgs;
            [
              libxcb-cursor
              sddm-astronaut
            ]
            ++ (with kdePackages; [
              qtmultimedia
              qtsvg
              qtvirtualkeyboard
              qt5compat
            ])
        );
        #package = pkgs.kdePackages.sddm;
        theme = "sddm-astronaut-theme";
      };
    };

    # Keyring
    gnome.gnome-keyring.enable = true;

    # Xserver
    xserver = {
      enable = true;
      excludePackages = with pkgs; [xterm];
      videoDrivers = ["nvidia"];
      # Keyboard layout
      xkb = {
        layout = "no";
        variant = "winkeys";
      };
    };

    # Audio
    pulseaudio.enable = false;
    pipewire = {
      extraConfig.pipewire = {
        adjust-sample-rate = {
          "context.properties" = {
            "default.clock.allowed-rates" = [
              44100
              48000
              88200
              96000
              176400
              192000
              384000
            ];
            "default.clock.rate" = 384000;
          };
          noresample = {
            "context.properties" = {
              "default.clock.allowed-rates" = [44100 48000 96000 192000 384000];
              "default.clock.rate" = 384000;
            };
          };
        };
      };
      wireplumber.enable = true;
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };

    # Flatpak
    flatpak.enable = true;

    # Printing
    printing.enable = true;

    # Image previews
    gvfs.enable = true;
    tumbler.enable = true;
  };
}
