{
  wayland.windowManager.hyprland.settings = {
    env = [
      "HYPRCURSOR_SIZE,24"
      "XCURSOR_SIZE,24"
    ];
    cursor = {
      default_monitor = "";
      enable_hyprcursor = true;
      hide_on_key_press = false;
      hide_on_touch = true;
      hotspot_padding = 1;
      inactive_timeout = 0;
      min_refresh_rate = 24;
      no_break_fs_vrr = false;
      no_hardware_cursors = 2;
      no_warps = false;
      persistent_warps = false;
      sync_gsettings_theme = true;
      warp_on_change_workspace = 0;
      zoom_factor = 1.0;
      zoom_rigid = false;
    };
  };
}
