{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    zsh
    kitty
    vscode
    librewolf
    orca-slicer
    dconf
    waybar
    firefox
    #ghostty
  ];
}
