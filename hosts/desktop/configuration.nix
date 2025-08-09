{ config, pkgs, computer, ... }:

{

  # Imports
  imports = [
    ./hardware-configuration.nix
    ../hardware/rules/udev
    ../config.nix
  ];

  # Network
  networking = {
    hostName = "${computer}";
    networkmanager.enable = true;
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

      # User Packages
      packages = with pkgs; [

      ];
    };
  };

  # Hardware
  hardware = {

    # Graphics
    graphics.enable = true;
    nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.beta;
      modesetting.enable = true;
      nvidiaSettings = true;
      open = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
      prime = {
        sync.enable = true;

        # Bus ID of the NVIDIA GPU. You can find it using lspci, either under 3D or VGA
        nvidiaBusId = "PCI:01:0:0";

        # Bus ID of the Intel GPU. You can find it using lspci, either under 3D or VGA
        amdBusId = "PCI:14:0:0";
      };
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

}
