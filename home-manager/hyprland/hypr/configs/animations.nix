{
  wayland.windowManager.hyprland.settings = {
    animations = {
      enabled = true;
      bezier = [
        "almostLinear,0.5,0.5,0.75,1.0"
        "easeInOutCubic,0.65,0.05,0.36,1"
        "easeOutQuint,0.23,1,0.32,1"
        "linear,0,0,1,1"
        "quick,0.15,0,0.1,1"
      ];
      animation = [
        "border, 1, 5.39, easeOutQuint"
        "fade, 1, 3.03, quick"
        "fadeIn, 1, 1.73, almostLinear"
        "fadeLayersIn, 1, 1.79, almostLinear"
        "fadeLayersOut, 1, 1.39, almostLinear"
        "fadeOut, 1, 1.46, almostLinear"
        "global, 1, 10, default"
        "layers, 1, 3.81, easeOutQuint"
        "layersIn, 1, 4, easeOutQuint, fade"
        "layersOut, 1, 1.5, linear, fade"
        "windows, 1, 4.79, easeOutQuint"
        "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
        "windowsOut, 1, 1.49, linear, popin 87%"
        "workspaces, 1, 1.94, almostLinear, fade"
        "workspacesIn, 1, 1.21, almostLinear, fade"
        "workspacesOut, 1, 1.94, almostLinear, fade"
      ];
    };
  };
}
