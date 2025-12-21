{
  inputs,
  pkgs,
  system,
  ...
}: {
  # Fonts
  fonts.packages = with pkgs.nerd-fonts; [
    fira-code
    jetbrains-mono
    symbols-only
    droid-sans-mono
  ];

  # Unfree
  nixpkgs.config.allowUnfree = true;

  # Enviroment
  environment = {
    # Shell
    shells = with pkgs; [zsh];

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
            (pkgs.sddm-astronaut.override {
              embeddedTheme = "pixel_sakura";
            })
            (discord.override {
              withVencord = true;
            })
            bottles
            lact
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
            vmware-workstation
            wirelesstools
            wl-clipboard
            wootility
            zip
            nix-health
            power-profiles-daemon
            auto-cpufreq
            xdg-desktop-portal-gnome
            xdg-desktop-portal-gtk
            xdg-desktop-portal-hyprland
            xdg-desktop-portal-wlr
            nix-health
            gnome-screenshot
            motrix
          ]
          # Packages from kde
          ++ (with kdePackages; [
            discover
            xdg-desktop-portal-kde
            qtmultimedia
            powerdevil
          ])
          # Packages from Pypi
          ++ (with python313Packages; [
            gpustat
            nvidia-ml-py
          ])
          ++ (with gnome; [
            #drum-machine
            #keypunch
            #letterpress
            #komikku
            #resources
            #gaphor
            #graphs
            #cartridges
            loupe
          ])
      )
      ++ (with inputs; [
        #quickshell.packages.${pkgs.stdenv.hostPlatform.system}.default
        alejandra.packages.${system}.default
        nix-search-tv.packages.${system}.default
      ]);
  };
}
