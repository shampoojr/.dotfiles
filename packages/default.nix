{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    kitty
    vscode
    librewolf
    dconf
    firefox
  ];

}
