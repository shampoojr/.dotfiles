{
  wayland.windowManager.hyprland.settings = {
    workspace = [
      "name:music, on-created-empty: Spotify"
      "1,monitor:DP-5,default:true"
    ];

    master = {
      allow_small_split = false;
      drop_at_cursor = true;
      inherit_fullscreen = true;
      mfact = 0.5;
      new_on_active = "none";
      new_on_top = false;
      new_status = "master";
      orientation = "left";
      smart_resizing = true;
      special_scale_factor = 0.5;
    };
    
    dwindle = {
      preserve_split = true;
      pseudotile = true;
    };
  };
}
