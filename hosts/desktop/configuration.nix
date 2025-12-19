{
  config,
  pkgs,
  computer,
  ...
}:

{

  # Imports
  imports = [
    ./hardware-configuration.nix
    ../hardware/rules/udev
    ../config.nix
    ../modules
    #../hardware/secureboot
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
        "wooting"
      ];

      # User Packagesq
      packages = with pkgs; [

      ];
    };
  };

  # Virt
  virtualisation.vmware.host.enable = true;

  # Hardware
  hardware = {

    wooting = {
      enable = true;
    };

    # Disables AMD Graphics
    cpu.amd.updateMicrocode = false;

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
        offload = {
          enable = false;
          enableOffloadCmd = false;
        };
        sync.enable = true;
        reverseSync.enable = false;
        allowExternalGpu = false;

        # Bus ID of the NVIDIA GPU. You can find it using lspci, either under 3D or VGA
        nvidiaBusId = "PCI:1:0:0";

        # Bus ID of the Intel GPU. You can find it using lspci, either under 3D or VGA
        amdgpuBusId = "PCI:14:0:0";
      };
    };
  };

  # Boot
  boot = {
    # Kernel
    kernelPackages = pkgs.linuxPackages_zen;
    kernelParams = [
      "nvidia-drm.modeset=1"
      "amdgpu.modeset=0"
      "module_blacklist=amdgpu"
      "modprobe.blacklist=amdgpu"
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

}
