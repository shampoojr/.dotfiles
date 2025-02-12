{config, ...}:{
  programs.Hyprpanel = {
    enable = true;
    systemd.enable = true;
    Hyprland = true;
    overwrite = true;
    
  }
}