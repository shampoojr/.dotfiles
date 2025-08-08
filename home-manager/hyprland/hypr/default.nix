{ ... }:
let
  base = "";
  primary = "";
  secondary = "";
  text = "";
in
{
  imports = [
    ./binds.nix
  ];
  services = {
    
    hyprpolkitagent = {
      enable = true;
    };

    hyprpaper = {
      enable = true;
      settings = {
        ipc = "off";
        splash = false;
        splash_offset = 2.0;
        preload = [
          "~/Pictures/anime-girl-girly-pink-fantasy.jpg"
        ];
        wallpaper = [
          "DP-5,~/Pictures/anime-girl-girly-pink-fantasy.jpg"
        ];
      };
    };
  };
  wayland.windowManager.hyprland = {
    plugins = [
    ];
    enable = true;
    settings = {
      exec-once = [
        "systemctl --user start hyprpolkitagent"
      ];
      input = {
        accel_profile = "";
        emulate_discrete_scroll = 1;
        float_switch_override_focus = 1;
        focus_on_close = 0;
        follow_mouse = 1;
        force_no_accel = false;
        kb_file = "";
        kb_layout = "no";
        kb_model = "";
        kb_options = "";
        kb_rules = "";
        kb_variant = "";
        left_handed = false;
        mouse_refocus = true;
        natural_scroll = false;
        numlock_by_default = false;
        off_window_axis_events = 1;
        repeat_delay = 600;
        repeat_rate = 25;
        resolve_binds_by_sym = false;
        scroll_button = 0;
        scroll_button_lock = 0;
        scroll_factor = 1;
        scroll_method = "";
        scroll_points = "";
        sensitivity = 0;
        special_fallthrough = false;
      };
      monitor = [
        "eDP-1,1920x1080@60,0x0,1"
        "HDMI-A-2,1920x1080@60,0x0,1"
        "DP-4,1920x1080@60,0x0,1"
        "DP-5,3440x1440@165,1920x0,1"
      ];
      env = [
        "HYPRCURSOR_SIZE,24"
        "XCURSOR_SIZE,24"
      ];
      general = {
        "col.active_border" = "rgba(595959ff)";
        "col.inactive_border" = "rgba(595959aa)";
        allow_tearing = false;
        border_size = 1;
        extend_border_grab_area = 0;
        gaps_in = 5;
        gaps_out = 10;
        gaps_workspaces = 0;
        hover_icon_on_border = true;
        layout = "master";
        no_border_on_floating = true;
        no_focus_fallback = true;
        resize_corner = 0;
        resize_on_border = true;
        snap = {
          enabled = false;
          window_gap = 10;
          monitor_gap = 10;
          border_overlap = false;
        };
      };
      decoration = {
        rounding = 10;
        active_opacity = 1.0;
        inactive_opacity = 1.0;
        fullscreen_opacity = 1.0;
        dim_inactive = false;
        dim_strength = 0.5;
        dim_special = 0.2;
        dim_around = 0.4;
        screen_shader = "";
        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          sharp = false;
          ignore_window = true;
          color = "0xee1a1a1a";
          offset = "0, 0";
          scale = 1.0;
        };
        blur = {
          brightness = 0.8172;
          contrast = 0.8916;
          enabled = true;
          ignore_opacity = false;
          new_optimizations = true;
          noise = 0.0117;
          passes = 5;
          popups = false;
          popups_ignorealpha = 0.2;
          size = 2;
          special = false;
          vibrancy = 0.1696;
          vibrancy_darkness = 0;
          xray = false;
        };
      };
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
      misc = {
        allow_session_lock_restore = false;
        always_follow_on_dnd = true;
        animate_manual_resizes = false;
        animate_mouse_windowdragging = false;
        close_special_on_empty = true;
        disable_autoreload = false;
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        disable_xdg_env_checks = false;
        enable_swallow = false;
        exit_window_retains_fullscreen = false;
        focus_on_activate = false;
        font_family = "FiraCode Nerd Font Bold";
        force_default_wallpaper = 0;
        initial_workspace_tracking = 1;
        key_press_enables_dpms = false;
        layers_hog_keyboard_focus = true;
        middle_click_paste = true;
        mouse_move_enables_dpms = false;
        mouse_move_focuses_monitor = true;
        new_window_takes_over_fullscreen = 0;
        render_unfocused_fps = 15;
        splash_font_family = "FiraCode Nerd Font Bold";
        swallow_exception_regex = "";
        swallow_regex = "";
        vfr = true;
        vrr = 0;
      };
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
      windowrule = [
        "float, title:lxqt-policykit-agent"
        "center,title:lxqt-policykit-agent"
        "size 500 500,title:lxqt-policykit-agent"
        #"float, class:com.mitchellh.ghostty"
      ];
      workspace = [
        "name:music, on-created-empty: Spotify"
        "1,monitor:DP-5,default:true"
      ];
      windowrulev2 = [
        "workspace music, class:Spotify"
        "float, class:nm-connection-editor"
        "float, class:org.pulseaudio.pavucontrol"
        "float, class:.blueman-manager-wrapped"
      ];
    };
    systemd.variables = [ "--all" ];
  };
}
