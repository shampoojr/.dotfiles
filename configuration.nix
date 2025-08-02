{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  system = {
    autoUpgrade.enable = true;
    autoUpgrade.allowReboot = true;
  };

  security = {
    rtkit.enable = true;
    polkit.enable = true;
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  hardware = {

    bluetooth.enable = true;
    graphics.enable = true;

    nvidia = {
      modesetting.enable = true;
      nvidiaSettings = true;
      open = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
    };
  };

  boot = {

    kernelPackages = pkgs.linuxPackages_zen;

    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  time.timeZone = "Europe/Oslo";

  i18n.defaultLocale = "en_US.UTF-8";

  programs = {

    steam.enable = true;

    hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };

    zsh.enable = true;

    thunar = {
      enable = true;
    };
  };

  services = {

    blueman.enable = true;

    xserver = {
      enable = true;
      videoDrivers = [ "nvidia" ];

      excludePackages = with pkgs; [ xterm ];

      xkb = {
        layout = "no";
        variant = "winkeys";
      };
    };

    displayManager.sddm.enable = true;
    pulseaudio.enable = false;
    printing.enable = true;
    flatpak.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    gvfs.enable = true;
    tumbler.enable = true;
  };

  console.keyMap = "no";

  fonts.packages = with pkgs.nerd-fonts; [
    fira-code
    symbols-only
  ];

  users = {

    defaultUserShell = pkgs.zsh;

    users.shampoojr = {
      isNormalUser = true;
      description = "shampoojr";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];

      packages = with pkgs; [
        fastfetch
        gh
        nixfmt-rfc-style
        vesktop
      ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment = {
    shells = with pkgs; [ zsh ];
    plasma6.excludePackages = with pkgs.kdePackages; [
    ];

    systemPackages = (
      with pkgs;
      ([
        hardinfo2
        brightnessctl
        cbonsai
        dmenu
        figlet
        gcc
        git
        gnumake
        grim
        hyprpolkitagent
        hyprutils
        libnotify
        lolcat
        lshw
        networkmanager_dmenu
        networkmanagerapplet
        nh
        nix-index
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

      ++ (with kdePackages; [
        polkit-kde-agent-1
        discover
      ])

      ++ (with python3Packages; [
        gpustat
      ])
      
      ++ (with lxqt; [
        lxqt-policykit
      ])
    );
  };

  system.stateVersion = "25.05";

}
