{
  config,
  pkgs,
  inputs,
  ...
}: {
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

  systemd.user.services."flatpak-org.vinegarhq.Sober".serviceConfig = {
    memoryMax = "500M";
    MemoryHigh = "750M";
  };

  # Bluetooth
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

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
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };
  services.dbus.enable = true;
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
      enable = true;
      wlr.enable = true;
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
  nixpkgs.config.cudaSupport = true;
  # TTY keymap
  console.keyMap = "no";
}
