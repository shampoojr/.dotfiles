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
  ctrlShift = "${control} + ${shift}";
  ctrlAlt = "${control} + ${alt}";
  shiftAlt = "${shift} + ${alt}";
  shift = "SHIFT";
  control = "CONTROL";
  alt = "ALT";
  mouse = "mouse:";
  right = "${mouse}273";
  left = "${mouse}272";
  sink = "@DEFAULT_AUDIO_SINK@";
  source = "@DEFAULT_AUDIO_SOURCE@";
  ws = "workspace";
  sws = "special${ws}";
  mt = "moveto";
  mtws = "${mt}${ws}";

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

    bind = [
      "${mod}, Tab, exec, hyprctl dispatch overview:toggle"
      "${mod}, E, exec, ${fileManager}"
      "${mod}, R, exec, ${menu}"
      "${mod}, W, exec, ${browser}"
      "${mod}, return, exec, ${terminal}"
      "${mod}, C, exec, ${editor}"
      "${mod}, F, exec, hyprctl dispatch fullscreenstate 3 0"
      "${mod}, space, togglefloating"
      "${modShift}, Q, killactive"
      "ALT, F4, killactive"

      "${mod}, p, exec, hyprpicker -a --format=hex"

      "${mod}, left, movefocus, l"
      "${mod}, right, movefocus, r"
      "${mod}, up, movefocus, u"
      "${mod}, down, movefocus, d"

      "${mod}, 1, ${ws}, 1"
      "${mod}, 2, ${ws}, 2"
      "${mod}, 3, ${ws}, 3"
      "${mod}, 4, ${ws}, 4"
      "${mod}, 5, ${ws}, 5"
      "${mod}, 6, ${ws}, 6"
      "${mod}, 7, ${ws}, 7"
      "${mod}, 8, ${ws}, 8"
      "${mod}, 9, ${ws}, 9"
      "${mod}, 0, ${ws}, 10"

      "${modShift}, 1, ${mtws}, 1"
      "${modShift}, 2, ${mtws}, 2"
      "${modShift}, 3, ${mtws}, 3"
      "${modShift}, 4, ${mtws}, 4"
      "${modShift}, 5, ${mtws}, 5"
      "${modShift}, 6, ${mtws}, 6"
      "${modShift}, 7, ${mtws}, 7"
      "${modShift}, 8, ${mtws}, 8"
      "${modShift}, 9, ${mtws}, 9"
      "${modShift}, 0, ${mtws}, 10"

      "${mod}, +, ${ws}, +1"
      "${mod}, -, ${ws}, -1"

      #"${mod}, S, togglespecialworkspace, magic"
      #"${modShift}, S, ${mtws}, special=magic"

      "${mod}, M, toggle${sws}, magic"
      "${mod}, M, ${mt}${ws}, +0"
      "${mod}, M, toggle${sws}, magic"
      "${mod}, M, ${mt}${ws}, special:magic"
      "${mod}, M, toggle${sws}, magic"

      "${mod}, mouse_down, ${ws}, e+1"
      "${mod}, mouse_up, ${ws}, e-1"

      # screenshot
      ", PRINT, exec, grimblast --notify --freeze save area"
      "${shift}, PRINT, exec, grimblast --notify --freeze --cursor save output"
      "${ctrlShift}, PRINT, exec, grimblast --notify --freeze --cursor save screen"
    ];

    bindm = [
      "${mod}, ${left}, movewindow"
      "${mod}, ${right}, resizewindow"
    ];

    bindle = [
      ",${audio}RaiseVolume, exec, wpctl set-volume -l 1 ${sink}  5%+"
      ",${audio}LowerVolume, exec, wpctl set-volume ${sink} 5%-"
      ",${audio}Mute, exec, wpctl set-mute ${sink}  toggle"
      ",${audio}MicMute, exec, wpctl set-mute ${source} toggle"
      ",${mon}Up, exec, brightnessctl s 10%+"
      ",${mon}Down, exec, brightnessctl s 10%-"
      ",${audio}MicMute, exec, wpctl set-mute ${source} toggle"
      ",${audio}Mute, exec, wpctl set-mute ${sink} toggle"
    ];

    bindl = [
      ", ${audio}Next, exec, ${media} next"
      ", ${audio}Pause, exec, ${media} play-pause"
      ", ${audio}Play, exec, ${media} play-pause"
      ", ${audio}Prev, exec, ${media} previous"
    ];
  };
}