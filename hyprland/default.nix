{ config, hypr, ... }:
let

base = "";
text = "";
primary = "";
secondary = "";


in
{

  imports = [
    ./binds.nix
  ];

  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "off";
      splash = false;
      splash_offset = 2.0;

      preload = [
        "~/Pictures/eincrad.jpg"
      ];

      wallpaper = [
        ",~/Pictures/eincrad.jpg"
      ];
    };
  };

  wayland.windowManager.hyprland = {
    enable = true; # enable Hyprland

    settings = {

      exec-once = [
        #systemctl --user start hyprpolkitagent
        "dunst"
        "waybar"
        "lxqt-policykit-agent"
        "hyprpaper"
        "nm-applet --indicator"
      ];

      input = {
        kb_model = "";
        kb_layout = "no";
        kb_variant = "";
        kb_options = "";
        kb_rules = "";
        kb_file = "";
        numlock_by_default = false;
        resolve_binds_by_sym = false;
        repeat_rate = 25;
        repeat_delay = 600;
        sensitivity = 0;
        accel_profile = "";
        force_no_accel = false;
        left_handed = false;
        scroll_points = "";
        scroll_method = "";
        scroll_button = 0;
        scroll_button_lock = 0;
        scroll_factor = 1;
        natural_scroll = false;
        follow_mouse = 1;
        mouse_refocus = true;
        focus_on_close = 0;
        float_switch_override_focus = 1;
        special_fallthrough = false;
        off_window_axis_events = 1;
        emulate_discrete_scroll = 1;
      };

      monitor = ",1920x1080,0x0,1";

      env = [
        "HYPRCURSOR_SIZE,24"
        "XCURSOR_SIZE,24"
      ];

      general = {
        border_size = 2;
        no_border_on_floating = false;
        gaps_in = 5;
        gaps_out = 10;
        gaps_workspaces = 0;

        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";

        layout = "master";
        no_focus_fallback = true;
        resize_on_border = true;
        extend_border_grab_area = 0;
        hover_icon_on_border = true;
        allow_tearing = false;
        resize_corner = 0;

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
          enabled = true;
          size = 2;
          passes = 5;
          ignore_opacity = false;
          new_optimizations = true;
          xray = false;
          noise = 0.0117;
          contrast = 0.8916;
          brightness = 0.8172;
          vibrancy = 0.1696;
          vibrancy_darkness = 0;
          special = false;
          popups = false;
          popups_ignorealpha = 0.2;
        };
      };

      animations = {
        enabled = true;

        bezier = [
          "easeOutQuint,0.23,1,0.32,1"
          "easeInOutCubic,0.65,0.05,0.36,1"
          "linear,0,0,1,1"
          "almostLinear,0.5,0.5,0.75,1.0"
          "quick,0.15,0,0.1,1"
        ];

        animation = [
          "global, 1, 10, default"
          "border, 1, 5.39, easeOutQuint"
          "windows, 1, 4.79, easeOutQuint"
          "windowsIn, 1, 4.1, easeOutQuint, popin 87%"
          "windowsOut, 1, 1.49, linear, popin 87%"
          "fadeIn, 1, 1.73, almostLinear"
          "fadeOut, 1, 1.46, almostLinear"
          "fade, 1, 3.03, quick"
          "layers, 1, 3.81, easeOutQuint"
          "layersIn, 1, 4, easeOutQuint, fade"
          "layersOut, 1, 1.5, linear, fade"
          "fadeLayersIn, 1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces, 1, 1.94, almostLinear, fade"
          "workspacesIn, 1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.94, almostLinear, fade"
        ];
      };

      master = {
        allow_small_split = false;
        special_scale_factor = 0.5;
        mfact = 0.5;
        new_status = "master";
        new_on_top = false;
        new_on_active = "none";
        orientation = "left";
        inherit_fullscreen = true;
        # always_center_master = false;
        smart_resizing = true;
        drop_at_cursor = true;
      };

      dwindle = {
        pseudotile = true; # Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = true; # You probably want this
      };

      misc = {
        force_default_wallpaper = 1; # Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = true; # If true disables the random hyprland logo / anime girl background. =(
        disable_splash_rendering = true;
        #"col.splash" = "${text}";
        font_family = "FiraCode Nerd Font Bold";
        splash_font_family = "FiraCode Nerd Font Bold";
        vfr = true;
        vrr = 0;
        mouse_move_enables_dpms = false;
        key_press_enables_dpms = false;
        always_follow_on_dnd = true;
        layers_hog_keyboard_focus = true;
        animate_manual_resizes = false;
        animate_mouse_windowdragging = false;
        disable_autoreload = false;
        enable_swallow = false;
        swallow_regex = "";
        swallow_exception_regex = "";
        focus_on_activate = false;
        mouse_move_focuses_monitor = true;
        render_ahead_of_time = false;
        render_ahead_safezone = 1;
        allow_session_lock_restore = false;
        #"background_color" = "${base}";
        close_special_on_empty = true;
        new_window_takes_over_fullscreen = 0;
        exit_window_retains_fullscreen = false;
        initial_workspace_tracking = 1;
        middle_click_paste = true;
        render_unfocused_fps = 15;
        disable_xdg_env_checks = false;
      };

      cursor = {
        sync_gsettings_theme = true;
        no_hardware_cursors = 2;
        no_break_fs_vrr = false;
        min_refresh_rate = 24;
        hotspot_padding = 1;
        inactive_timeout = 0;
        no_warps = false;
        persistent_warps = false;
        warp_on_change_workspace = 0;
        default_monitor = "";
        zoom_factor = 1.0;
        zoom_rigid = false;
        enable_hyprcursor = true;
        hide_on_key_press = false;
        hide_on_touch = true;
      };

      windowrule = [
        "noblur, ^(Code)$"
      ];

      windowrulev2 = [
      ];

    };
    systemd.variables = [ "--all" ];
  };
}
