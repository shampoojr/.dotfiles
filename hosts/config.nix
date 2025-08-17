{
  config,
  pkgs,
  computer,
  ...
}:
{

  # Auto Update
  system = {
    autoUpgrade.enable = true;
    autoUpgrade.allowReboot = true;
  };

  # Polkit
  security = {
    pam.services = {
      login.u2fAuth = true;
      sudo.u2fAuth = true;
    };
    rtkit.enable = true;
    polkit.enable = true;
  };

  #Nix Flakes
  nix = {
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 30d";
    };

    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  # Bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  # Timezone
  time.timeZone = "Europe/Oslo";
  i18n.defaultLocale = "en_US.UTF-8";

  # Programs
  programs = {
    # Steam
    steam.enable = true;

    # Hyprland
    hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };

    # ZSH
    zsh.enable = true;

    # File Manager
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };
  services.dbus.enable = true;
  xdg = {

    mime.defaultApplications = {
      #"text/html" = "zen-beta";
      "x-scheme-handler/http" = "zen-beta";
      "x-scheme-handler/https" = "zen-beta";
      "x-scheme-handler/about" = "zen-beta";
      #"x-scheme-handler/unknown" = "zen-beta";
      "x-scheme-handler/roblox-player" = "org.vinegarhq.Sober.desktop";
    };
    portal = {
      enable = true;
      wlr.enable = true;
      config = {
        common = {
          default = [
            "kde"
          ];
        };
      };
      extraPortals = [ pkgs.kdePackages.xdg-desktop-portal-kde ];
    };
  };

  # Services
  services = {

    # Login
    displayManager.sddm.enable = true;

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

  console.keyMap = "no";

  # Fonts
  fonts.packages = with pkgs.nerd-fonts; [
    fira-code
    jetbrains-mono
    symbols-only
  ];

  # Unfree
  nixpkgs.config.allowUnfree = true;

  # Enviroment
  environment = {

    # Shell
    shells = with pkgs; [ zsh ];

    # Plasma6 Exclusions
    plasma6.excludePackages = with pkgs.kdePackages; [
      kcalc
      kcharselect
      kcolorchooser
      kolourpaint
      ksystemlog
      plasma-browser-integration
      kdepim-runtime
      konsole
      oxygen
    ];

    # System Packages
    systemPackages = (
      with pkgs;
      ([
        alsa-utils
        brightnessctl
        cbonsai
        dconf
        figlet
        gcc
        gnome-photos
        gnumake
        grim
        grimblast
        hardinfo2
        hyprutils
        jp2a
        krita
        libnotify
        lolcat
        lshw
        networkmanagerapplet
        nixfmt-rfc-style
        nodejs
        pavucontrol
        playerctl
        playerctl
        pokeget-rs
        pv
        python313
        sbctl
        seahorse
        slurp
        toilet
        unzip
        w3m
        wirelesstools
        wl-clipboard
        wootility
        xdg-desktop-portal-gnome
        xdg-desktop-portal-gtk
        xdg-desktop-portal-hyprland
        xdg-desktop-portal-wlr
        zip
      ])

      # Packages from kde
      ++ (with kdePackages; [
        discover
        xdg-desktop-portal-kde
        
      ])

      # Packages from Pypi
      ++ (with python313Packages; [
        gpustat
        pip
        # mido
        # rtmidi
        # keyboard
      ])
    );
  };

  # System stateVersion
  system.stateVersion = "25.05";

}
