{
  config,
  pkgs,
  lib,
  laptop,
  alejandra,
  username,
  ...
}: {
  # Imports
  imports = [
    ./hardware-configuration.nix
    ../config.nix
  ];

  services.xserver.videoDrivers = [
    "modesetting"
    "nvidia"
    #"intel"
  ];

  # Hardware
  hardware = {
    # Graphics
    graphics = {
      enable = true;
    };

    # CPU
    cpu.intel.updateMicrocode = false;

    # Nvidia
    nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.stable;
      open = false;
      nvidiaSettings = true;
      modesetting.enable = true;
      powerManagement.finegrained = false;
      powerManagement.enable = true;
      prime = {
        offload = {
          enable = false;
          enableOffloadCmd = false;
        };
        sync.enable = true;
        reverseSync.enable = false;
        allowExternalGpu = false;

        # Bus ID of the NVIDIA GPU. You can find it using lspci, either under 3D or VGA
        nvidiaBusId = "PCI:6:0:0";

        # Bus ID of the Intel GPU. You can find it using lspci, either under 3D or VGA
        intelBusId = "PCI:0:2:0";
      };
    };
  };

  # Boot
  boot = {
    # Kernel
    kernelPackages = pkgs.linuxPackages_zen;
    kernelParams = [
      "nvidia-drm.modeset=1"
      # "module_blacklist=i915"
    ];
    # Bootloader
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
      };
      grub = {
        theme = pkgs.catppuccin-grub;
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
  powerManagement.powertop.enable = true;

  security = {
    pam = {
      services = {
        sddm = {
          enableGnomeKeyring = true;
        };
      };
    };
  };

  # Services
  services = {
    auto-cpufreq = {
      enable = true;
      settings = {
        battery = {
          governor = "performance";
          turbo = "always";
        };
        charger = {
          governor = "performance";
          turbo = "always";
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
