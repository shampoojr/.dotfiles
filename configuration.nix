{ config, pkgs, ... }:

{

  # Imports
  imports = [
    ./hardware-configuration.nix
  ];

  # Auto Update
  system = {
    autoUpgrade.enable = true;
    autoUpgrade.allowReboot = true;
  };

  # Polkit
  security = {
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

  # Hardware
  hardware = {

    # Graphics
    graphics.enable = true;
    nvidia = {
      modesetting.enable = true;
      nvidiaSettings = true;
      open = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
    };
  };

  # Boot
  boot = {

    # Kernel
    kernelPackages = pkgs.linuxPackages_zen;

    # Bootloader
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  # Network
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

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
      videoDrivers = [ "nvidia" ];

      excludePackages = with pkgs; [ xterm ];

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
    symbols-only
  ];

  # Users
  users = {

    # Default Shell
    defaultUserShell = pkgs.zsh;

    # Local User
    users.shampoojr = {
      isNormalUser = true;
      description = "shampoojr";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];

      # User Packages
      packages = with pkgs; [
        nixfmt-rfc-style
      ];
    };
  };

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
        seahorse
        hardinfo2
        brightnessctl
        cbonsai
        figlet
        gcc
        gnumake
        grim
        hyprutils
        libnotify
        lolcat
        lshw
        networkmanagerapplet
        nodejs
        pavucontrol
        playerctl
        pokeget-rs
        pv
        python313
        sbctl
        slurp
        toilet
        w3m
        gnome-photos
        wirelesstools
        wl-clipboard
        xdg-desktop-portal-gnome
        xdg-desktop-portal-gtk
        xdg-desktop-portal-hyprland
        xdg-desktop-portal-wlr
      ])

      # Packages from kde
      ++ (with kdePackages; [
        discover
      ])

      # Packages from Pypi
      ++ (with python3Packages; [
        gpustat
      ])
    );
  };

  # System stateVersion
  system.stateVersion = "25.05";

}
