{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    vscode
    librewolf
    firefox
    dconf
  ];

}
