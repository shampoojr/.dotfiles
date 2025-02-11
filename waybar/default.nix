{pkgs, ...}:{
  programs.waybar = {
    enable = true;

    settings = {
      waybar = {
        layer = "top";
        position = "top";
        reload_style_on_change = true;
        height = 45;
        width = 1910;
        margin-top = 5;
        margin-left = 0;
        margin-right = 0;
        margin-bottom = 0;
        spacing = 10;
        name = "waybar";
        mode = "dock";
        start_hidden = false;
        exclusive = true;
        fixed-center = true;


        modules-left = [ "image" "hyprland/workspaces" "hyprland/window" ];
        modules-center = [ ];
        modules-right = [ "group/systray" "cpu" "memory" "network" "pulseaudio" "clock" "user" ];

      };
    };
  };
}