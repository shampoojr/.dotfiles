{ config, pkgs, laptop, ... }:

{

  # Imports
  imports = [
    ./hardware-configuration.nix
    ../config.nix
  ];

  services.xserver.videoDrivers = [ "modesetting" "nvidia" ]; 
  # Hardware
  hardware = {
    # Graphics
    graphics.enable = true;
    nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.stable;
      open = false;
      nvidiaSettings = true;
      modesetting.enable = true;
      # prime = {
      #   sync.enable = true;

      #   # Bus ID of the NVIDIA GPU. You can find it using lspci, either under 3D or VGA
      #   nvidiaBusId = "PCI:01:0:0";

      #   # Bus ID of the Intel GPU. You can find it using lspci, either under 3D or VGA
      #   intelBusId = "PCI:14:0:0";
      # };
    };
  };

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
    hostName = "${laptop}";
    networkmanager.enable = true;
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
  };

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
    };
  };

  # Unfree
  nixpkgs.config.allowUnfree = true;

  # Enviroment
  environment = {

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
  };
}
