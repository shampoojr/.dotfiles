{
  config,
  pkgs,
  input,
  ...
}: {
  imports = [./imports];
  home = {
    homeDirectory = "/home/shampoojr";
    stateVersion = "25.11"; # Please read the comment before changing.
    file = {};
    sessionVariables = {
      GTK_USE_PORTAL = "1";
      NIXOS_OZONE_WL = "1";
      __GR_VRR_ALLOWED = "0";
      __GR_GSYNC_ALLOWED = "0";
      XDG_SCREENSHOTS_DIR = "$HOME/Pictures/Screenshots";
    };
  };
  programs.home-manager.enable = true;
}
