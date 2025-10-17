{
  config,
  pkgs,
  computer,
  system,
  inputs,
  ...
}:
{
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
      substituters = [ "https://hyprland.cachix.org" ];
      trusted-public-keys = [ "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
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


  # TTY keymap
  console.keyMap = "no";

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

    # System Packages
    systemPackages =
      (
        with pkgs;
          [
            # (
            #   pkgs.catppuccin-sddm.override {
            #     flavor = "mocha";
            #     accent = "mauve";
            #     font = "Firacode Nerd Font";
            #     fontSize = "9";
            #     #background = "${./wallpaper.png}";
            #     loginBackground = true;
            #   }
            # )
            (
              pkgs.sddm-astronaut.override {
                embeddedTheme = "pixel_sakura";
              }
            )
            (
              discord.override {
                withVencord = true;
              }
            )
            cosmic-files
            cosmic-icons
            mesa-demos
            mesa
            alsa-utils
            brightnessctl
            cbonsai
            dconf
            figlet
            gcc
            gnome-photos
            gnumake
            grim
            grimblast
            hardinfo2
            hyprutils
            jp2a
            krita
            libnotify
            lolcat
            lshw
            networkmanagerapplet
            nixfmt-rfc-style
            nodejs
            pavucontrol
            playerctl
            playerctl
            pokeget-rs
            pv
            openal
            python313
            sbctl
            seahorse
            slurp
            toilet
            unzip
            w3m
            wirelesstools
            wl-clipboard
            wootility
            freecad
            zip
            nix-health
            guvcview
          ]
          ++ (with qt6; [
            qtbase
            qt5compat
            qtdeclarative
          ])
          # Packages from kde
          ++ (with kdePackages; [
            discover
            xdg-desktop-portal-kde
            qtmultimedia
            qtsvg
            qt5compat
            qtimageformats
            #qtdeclarative
          ])
          # Packages from Pypi
          ++ (with python313Packages; [
            gpustat
          ])
          ++ (with gnome; [
            # drum-machine
            # keypunch
            # letterpress
            # komikku
            # resources
            # gaphor
            # graphs
            # cartridges
            loupe
          ])
      )
      ++ (with inputs; [
        quickshell.packages.${system}.default
        alejandra.packages."${system}".default
        nix-software-center.packages.${system}.nix-software-center
        nixos-conf-editor.packages.${system}.nixos-conf-editor
        nix-search-tv.packages."${system}".default
      ]);
  };


}
