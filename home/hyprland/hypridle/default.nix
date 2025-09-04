{ ... }:
{
  services.hypridle = {
    enable = true;
    importantPrefixes = [
    ];
    settings = {
      general = {
        after_sleep_cmd = "hyprctl dispatch dpms on";
        ignsore_dbus_inhibit = false;
        lock_cmd = "pidof hyprlock || hyprlock";
      };
      listener = [
        {
          timeout = "300";
          on-timeout = "loginctl lock-session";
          on-resume = "notify-send 'Welcome Back!'";
        }
        {
          timeout = "1800";
          on-timeout = "systemctl suspend";
        }
        {
          timeout = "330";
          on-timeout = "hyprctl dispatch dpms off";
          on-resume = "hyprctl dispatch dpms on";
        }
      ];
    };
  };
}
