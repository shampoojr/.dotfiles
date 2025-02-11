{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  hardware.openrazer.enable = true;

  # I dont really know how this works
  #  system.autoUpgrade.enable = true;
  #  system.autoUpgrade.allowReboot = true;

  # This has broke me so may times
  security.polkit.enable = true;

  # Bootloader.
  boot.loader = {

    # Systemd bootloader
    # systemd-boot.enable = true;

    #EFI
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };

    # Grub bootloader
    grub = {
      efiSupport = true;
      enable = true;
      useOSProber = true;
      devices = [ "nodev" ];
      extraEntries = ''
        menuentry "Reboot" {
            reboot
        }
        menuentry "Poweroff" {
            halt
        }
      '';
    };
  };

  # When I have time ill change this
  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Enable networking
  networking.networkmanager.enable = true;

  # Flakes for unstable DO NOT USE FOR STABLE
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Set your time zone.
  time.timeZone = "Europe/Oslo";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Hyprland
  services.displayManager.sddm.enable = true;
  programs.hyprland.enable = true;

  services.xserver = {
    # Exclude packages from services
    excludePackages = with pkgs; [ xterm ];

    # Keyboard layout
    xkb = {
      layout = "no";
      variant = "winkeys";
    };
  };

  # Configure console keymap
  console.keyMap = "no";

  # Enable CUPS to print documents.
  #services.printing.enable = true;

  # Enable sound with pipewire.
  #  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    #jack.enable = true;

    #media-session.enable = true;
  };

  # Screencast
  xdg.portal = {
    xdgOpenUsePortal = true;
    enable = true;
    # wlr.enable = true;
    # lxqt.enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
    ];
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  #Default shell global
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  # Fonts
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" ]; })
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    #    nerd-fonts.fira-code
    font-awesome
  ];

  # Enviroment
  environment = {

    # ZSH
    shells = with pkgs; [ zsh ];

    # Exclude enviroment packages
    plasma6.excludePackages = with pkgs.kdePackages; [
      elisa
      gwenview
      kate
      khelpcenter
      konsole
      okular
      dolphin
      kwallet
    ];

    # System packages
    systemPackages = with pkgs; [
      hyprutils
      hyprpolkitagent
      pavucontrol
      wl-clipboard
      libnotify
      brightnessctl
      playerctl
      grim
      slurp
      git
      lshw
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-kde
      xdg-desktop-portal-wlr
      lxqt.lxqt-policykit
      networkmanagerapplet
      openrazer-daemon
    ];
  };

  # Direnv need more reading to know what to do with this
  programs.direnv.enable = true;

  # Steam | why cant i pkgs!??
  programs.steam = {
    enable = true;
  };

  # Thunar | the better file manager
  programs.thunar = {
    enable = true;
  };

  # IDK what this is
  programs.xfconf.enable = true;
  services.gvfs.enable = true;
  services.tumbler.enable = true;

  # Java just for minecraft
  programs.java = {
    enable = true;
  };

  # Flatpak
  services.flatpak.enable = true;

  # Bluetooth | works half of the time
  hardware.bluetooth.enable = true; # enables support for Bluetooth
  hardware.bluetooth.powerOnBoot = true; # powers up the default Bluetooth controller on boot
  # services.blueman.enable = true; #DO NOT ENABLE

  # Define a user account. Don't forget to set a password with ‘passwd’.

  users.users.shampoojr = {
    isNormalUser = true;
    description = "shampoojr";
    extraGroups = [
      "openrazer"
      "networkmanager"
      "wheel"
    ];

    # User packages
    packages = with pkgs; [
      hyprpicker
      hyprpaper
      dunst
      waybar
      eww
      #ghostty
      hyprshot
      loupe
      ponysay
      nixfmt-rfc-style
      thunderbird
      fastfetch
      unzip
      polychromatic
      eza
      kitty
      vscode
      btop
      zoxide
      oh-my-posh
      discord
      rofi
      prismlauncher
    ];
  };

  nixpkgs.config.allowUnfree = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable the OpenSSH daemon.
  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "prohibit-password";
      AllowUsers = null;
      UseDns = true;
      X11Forwarding = false;
    };
  };

  #users.users.root.openssh.authorizedKeys.keyFiles = [
  #  /home/shampoojr/.ssh/authorized_keys
  #];

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = false;

  system.stateVersion = "24.11"; # Did you read the comment? | nope
}
