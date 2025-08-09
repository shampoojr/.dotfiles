{
  config,
  pkgs,
  input,
  username,
  ...
}:
{
  imports = [ ./imports ];
  home = {
    username = "${username}";
    homeDirectory = "/home/shampoojr";
    stateVersion = "25.05"; # Please read the comment before changing.
    file = { };
    sessionVariables = { };
  };
  programs.home-manager.enable = true;
}
