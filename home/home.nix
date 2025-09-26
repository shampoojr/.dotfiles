{
  config,
  pkgs,
  input,
  username,
  ...
}: {
  imports = [./imports];
  home = {
    username = "${username}";
    homeDirectory = "/home/shampoojr";
    stateVersion = "25.11"; # Please read the comment before changing.
    file = {};
    sessionVariables = {
      XDG_SCREENSHOTS_DIR = "$HOME/Pictures/Screenshots";
    };
  };
  programs.home-manager.enable = true;
}
