{
  config,
  pkgs,
  lib,
  inputs,
  ...
}: {
  # Auto Update
  system = {
    autoUpgrade.enable = lib.mkDefault true;
    autoUpgrade.allowReboot = lib.mkDefault true;
  };

  # Polkit
  security = {
    rtkit.enable = lib.mkDefault true;
    polkit.enable = lib.mkDefault true;
  };

  #Nix Flakes
  nix = {
    settings = {
      trusted-users = ["root" "shampoojr"];
      warn-dirty = false;
      substituters = ["https://hyprland.cachix.org"];
      trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  environment.sessionVariables = {
  };

  # Bluetooth
  hardware.bluetooth.enable = lib.mkDefault true;
  services.blueman.enable = lib.mkDefault true;

  # Timezone
  time.timeZone = "Europe/Oslo";
  i18n.defaultLocale = "en_US.UTF-8";

  # Programs
  programs = {
    virt-manager.enable = true;

    # Steam
    steam.enable = lib.mkDefault true;

    # Hyprland
    hyprland = {
      enable = lib.mkDefault true;
      withUWSM = lib.mkDefault true;
      xwayland.enable = lib.mkDefault true;
    };

    # ZSH
    zsh.enable = lib.mkDefault true;

    # File Manager
    thunar = {
      enable = lib.mkDefault true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };
  services.dbus.enable = lib.mkDefault true;
  xdg = {
    mime.defaultApplications = {
      #"text/html" = "zen-beta";
      "x-scheme-handler/http" = "nvim.desktop";
      "x-scheme-handler/https" = "nvim.desktop";
      "x-scheme-handler/about" = "nvim.desktop";
      #"x-scheme-handler/unknown" = "zen-beta";
      "x-scheme-handler/roblox-player" = "org.vinegarhq.Sober.desktop";
    };
    portal = {
      enable = lib.mkDefault true;
      wlr.enable = lib.mkDefault true;
      config = {
        common = {
          default = [
            "gtk"
          ];
        };
      };
      extraPortals = with pkgs.kdePackages; [
        xdg-desktop-portal-kde
      ];
    };
  };
  nixpkgs.config.cudaSupport = lib.mkDefault true;
  # TTY keymap
  console.keyMap = "no";
}
