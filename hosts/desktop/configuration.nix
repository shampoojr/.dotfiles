{
  config,
  pkgs,
  lib,
  ...
}: {
  # Imports
  imports = [
    ./hardware-configuration.nix
    ../hardware/rules/udev
    ../config.nix
    ../modules
  ];
  systemd.services.nvidia-powerd.enable = false;
  # Network
  networking = {
    hostName = "MSI";
    networkmanager.enable = true;
    nameservers = ["192.168.3.105"];
  };
  systemd.services.display-manager.after = ["nvidia-drm-output.target"];
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
        "libvirtd"
        "video"
        "render"
      ];
      shell = pkgs.zsh;

      # User Packages
      packages = with pkgs; [
      ];
    };
  };

  # Virt
  virtualisation = {
    libvirtd = {
      enable = false;
    };
    vmware.host.enable = false;
    spiceUSBRedirection.enable = false;
  };
  # Hardware
  hardware = {
    wooting = {
      enable = true;
    };

    # Disables AMD Graphics
    cpu.amd.updateMicrocode = false;

    # Graphics
    graphics.enable = lib.mkForce true;
    nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.beta;
      modesetting.enable = lib.mkForce true;
      nvidiaSettings = lib.mkForce true;
      dynamicBoost.enable = lib.mkForce false;
      open = lib.mkForce true;
      nvidiaPersistenced = lib.mkForce true;
      powerManagement.enable = lib.mkForce false;
      powerManagement.finegrained = lib.mkForce false;
      prime = {
        offload = {
          enable = lib.mkForce true;
          enableOffloadCmd = lib.mkForce true;
        };
        sync.enable = lib.mkForce false;
        reverseSync.enable = lib.mkForce false;
        allowExternalGpu = lib.mkForce false;

        # Bus ID of the NVIDIA GPU. You can find it using lspci, either under 3D or VGA
        nvidiaBusId = "PCI:1:0:0";

        # Bus ID of the Intel GPU. You can find it using lspci, either under 3D or VGA
        amdgpuBusId = "PCI:14:0:0";
      };
    };
  };

  # Boot
  boot = {
    initrd = {
      availableKernelModules = [
        "nvidia"
        "nvidia_uvm"
        "nvidia_modeset"
        "nvidia_drm"
      ];
    };
    kernelModules = ["nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm"];

    # Kernel
    kernelPackages = pkgs.linuxPackages_zen;
    kernelParams = [
      "nvidia-drm.fbdev=1"
      "nvidia.NVreg_RegistryDwords=RMConnectToConnector=1"
      "module_blacklist=amdgpu"
      "modprobe.blacklist=amdgpu"
      # "module_blacklist=i915"
    ];
    # Bootloader
    loader = {
      systemd-boot.enable = false;
      efi = {
        canTouchEfiVariables = false;
        efiSysMountPoint = "/boot/efi";
      };
      grub = {
        theme = lib.mkDefault pkgs.catppuccin-grub;
        useOSProber = true;
        efiSupport = true;
        efiInstallAsRemovable = true;
        device = "nodev";
      };
    };
  };
  system.stateVersion = "25.11"; # Did you read the comment?
}
