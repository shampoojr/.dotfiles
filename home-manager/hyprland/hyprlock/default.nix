{ pkgs, ... }:
{
  services.hypridle = {
    enable = true;
    package = pkgs.hypridle;
    importantPrefixes = [
    ];
    settings = {
      general = {
        after_sleep_cmd = "hyprctl dispatch dpms on";
        ignsore_dbus_inhibit = false;
        lock_cmd = "hyprlock";
      };
      listener = {
        timeout = "20";
        on-timeout = "notify-send 'You are locked!'";
        on-resume = "notify-send 'Welcome Back!'";
      }
    };
  };
}
