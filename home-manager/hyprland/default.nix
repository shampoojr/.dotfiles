{ lib, config, ... }:{

  imports = [
    #./hyprpanel
    ./hyprlock
    ./hypridle
    ./hyprpolkit
  ];
}