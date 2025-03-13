{ pkgs, config, ... }:
{
  programs = {
    librewolf = {
      enable = true;
    };
    
    firefox = {
      enable = true;
    };
  };
}
