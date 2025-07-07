{ ... }:
let
  editor = "code";
  fileManager = "thunar";
  terminal = "ghostty";
  browser = "zen";
  menu = "rofi -show drun";

  audio = "XF86Audio";
  mon = "XF86MonBrightness";
  media = "playerctl";
  mod = "SUPER";
  modShift = "${mod} + ${shift}";
  modControl = "${mod} + ${control}";
  modAlt = "${mod} + ${alt}";
  shift = "SHIFT";
  control = "CONTROL";
  alt = "ALT";
  mouse = "mouse:";
  right = "${mouse}273";
  left = "${mouse}272";

in
{

  wayland.windowManager.hyprland.settings = {
    binds = {
      pass_mouse_when_bound = false;
      scroll_event_delay = 300;
      workspace_back_and_forth = false;
      allow_workspace_cycles = false;
      workspace_center_on = 0;
      focus_preferred_method = 0;
      ignore_group_lock = false;
      movefocus_cycles_fullscreen = true;
      disable_keybind_grabbing = false;
      window_direction_monitor_fallback = true;
    };

    #gestures = [
    #  "workspace_swipe"
    #];

    bind = [

      "${mod}, E, exec, ${fileManager}"
      "${mod}, R, exec, ${menu}"
      "${mod}, W, exec, ${browser}"
      "${mod}, return, exec, ${terminal}"
      "${mod}, C, exec, ${editor}"
      "${mod}, F, exec, hyprctl dispatch fullscreenstate 3 0"
      "${mod}, space, togglefloating"
      "${modShift}, Q, killactive"

      "${mod}, p, exec, hyprpicker -a --format=rgb"

      "${mod}, left, movefocus, l"
      "${mod}, right, movefocus, r"
      "${mod}, up, movefocus, u"
      "${mod}, down, movefocus, d"

      "${mod}, 1, workspace, 1"
      "${mod}, 2, workspace, 2"
      "${mod}, 3, workspace, 3"
      "${mod}, 4, workspace, 4"
      "${mod}, 5, workspace, 5"
      "${mod}, 6, workspace, 6"
      "${mod}, 7, workspace, 7"
      "${mod}, 8, workspace, 8"
      "${mod}, 9, workspace, 9"
      "${mod}, 0, workspace, 10"

      "${modShift}, 1, movetoworkspace, 1"
      "${modShift}, 2, movetoworkspace, 2"
      "${modShift}, 3, movetoworkspace, 3"
      "${modShift}, 4, movetoworkspace, 4"
      "${modShift}, 5, movetoworkspace, 5"
      "${modShift}, 6, movetoworkspace, 6"
      "${modShift}, 7, movetoworkspace, 7"
      "${modShift}, 8, movetoworkspace, 8"
      "${modShift}, 9, movetoworkspace, 9"
      "${modShift}, 0, movetoworkspace, 10"

      "${mod}, +, workspace, +1"
      "${mod}, -, workspace, -1"

      "${mod}, S, togglespecialworkspace, magic"
      "${modShift}, S, movetoworkspace, special=magic"

      "${mod}, mouse_down, workspace, e+1"
      "${mod}, mouse_up, workspace, e-1"

      # screenshot
      ", PRINT, exec, hyprshot -m output -o /home/shampoojr/Pictures"
      " ${shift}, PRINT, exec, hyprshot -m region -o /home/shampoojr/Pictures"
    ];

    bindm = [
      "${mod}, ${left}, movewindow"
      "${mod}, ${right}, resizewindow"
    ];

    bindle = [
      ",${audio}RaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",${audio}LowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",${audio}Mute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",${audio}MicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ",${mon}Up, exec, brightnessctl s 10%+"
      ",${mon}Down, exec, brightnessctl s 10%-"
      ",${audio}MicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
      ",${audio}Mute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    ];

    bindl = [
      ", ${audio}Next, exec, ${media} next"
      ", ${audio}Pause, exec, ${media} play-pause"
      ", ${audio}Play, exec, ${media} play-pause"
      ", ${audio}Prev, exec, ${media} previous"
    ];
  };
}
