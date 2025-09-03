{
  config,
  pkgs,
  lib,
  laptop,
  username,
  ...
}:

{

  # Imports
  imports = [
    ./hardware-configuration.nix
    ../config.nix
  ];

  services.xserver.videoDrivers = [
    "modesetting"
    "nvidia"
  ];

  # Hardware
  hardware = {

    # Graphics
    graphics.enable = true;
    nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.stable;
      open = false;
      nvidiaSettings = true;
      modesetting.enable = true;
      powerManagement.finegrained = false;
      powerManagement.enable = false;
      prime = {
        offload = {
          enable = false;
          enableOffloadCmd = false;
        };
        sync.enable = true;
        reverseSync.enable = true;
        allowExternalGpu = true;

        # Bus ID of the NVIDIA GPU. You can find it using lspci, either under 3D or VGA
        nvidiaBusId = "PCI:60:0:0";

        # Bus ID of the Intel GPU. You can find it using lspci, either under 3D or VGA
        intelBusId = "PCI:0:2:0";
      };
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
  };

  # Users
  users = {

    # Default Shell
    defaultUserShell = pkgs.zsh;

    # Local User
    users.${username} = {
      isNormalUser = true;
      description = "shampoojr";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };
  };
}
