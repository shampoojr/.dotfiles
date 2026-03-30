{
  lib,
  inputs,
  ...
}: {
  imports = [./imports];
  home = {
    stateVersion = "25.11"; # Please read the comment before changing.
    file = {};
    sessionVariables = {
      XDG_SCREENSHOTS_DIR = "$HOME/Pictures/Screenshots";
      QS_CONFIG_PATH = "$XDG_CONFIG_HOME/quickshell";
    };
  };
  programs.home-manager.enable = lib.mkDefault true;
}
