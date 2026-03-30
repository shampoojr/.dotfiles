{
  pkgs,
  inputs,
  config,
  ...
}: {
  imports = [
    ./binds.nix
    ./configs
  ];

  wayland.windowManager.hyprland = {
    systemd.enable = false;
    enable = true;
    settings.env = [
      "NVD_BACKEND,direct"
      "LIBVA_DRIVER_NAME,nvidia"
      "XDG_SESSION_TYPE,wayland"
      "GBM_BACKEND,nvidia-drm"
      "__GLX_VENDOR_LIBRARY_NAME,nvidia"
    ];
    systemd.variables = ["--all"];
  };
}
