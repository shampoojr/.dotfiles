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

  # Garbage Collector
  nix = {
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 30d";
    };

    # Nix Flakes
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  # Bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  # services.xserver.videoDrivers = [ "modesetting" "nvidia" ]; 
  # # Hardware
  # hardware = {
  #   # Graphics
  #   graphics.enable = true;
  #   nvidia = {
  #     package = config.boot.kernelPackages.nvidiaPackages.stable;
  #     open = false;
  #     nvidiaSettings = true;
  #     modesetting.enable = true;
  #     prime = {
  #       sync.enable = true;

  #       # Bus ID of the NVIDIA GPU. You can find it using lspci, either under 3D or VGA
  #       nvidiaBusId = "PCI:60:0:0";

  #       # Bus ID of the Intel GPU. You can find it using lspci, either under 3D or VGA
  #       intelBusId = "PCI:0:0:2";
  #     };
  #   };
  # };

  # Boot
  boot = {

    # Kernel
    kernelPackages = pkgs.linuxPackages_zen;

    # Bootloader
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
      };
      grub = {
        efiSupport = true;
        device = "nodev";
      };
    };
  };

  # Network
  networking = {
    hostName = "LT590";
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

    
    auto-cpufreq = {
      enable = true;
      settings = {
        battery = {
          governor = "powersave";
          turbo = "never";
        };
        charger = {
          governor = "performance";
          turbo = "auto";
        };
      };
    };

    upower.enable = true;

    tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

        CPU_MIN_PERF_ON_AC = 0;
        CPU_MAX_PERF_ON_AC = 100;
        CPU_MIN_PERF_ON_BAT = 0;
        CPU_MAX_PERF_ON_BAT = 20;

        #Optional helps save long term battery health
        START_CHARGE_THRESH_BAT0 = 40; # 40 and below it starts to charge
        STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging

      };
    };

    # Login
    displayManager.sddm.enable = true;

    # Xserver
    xserver = {
      enable = true;
      #      videoDrivers = [ "nvidia" ];

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
    jetbrains-mono
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
        jp2a
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
