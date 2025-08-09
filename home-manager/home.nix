{
  config,
  pkgs,
  input,
  ...
}:
{
  imports = [ ./home-manager/imports ];
  home.username = "shampoojr";
  home.homeDirectory = "/home/shampoojr";
  home.stateVersion = "25.05"; # Please read the comment before changing.
  home.packages = with pkgs; [ ];
  home.file = { };
  home.sessionVariables = { };
  programs.home-manager.enable = true;
}
