{ pkgs, config, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      yzhang.markdown-all-in-one
      jnoortheen.nix-ide
      bbenoist.nix
      mhutchie.git-graph
      github.github-vscode-theme
    ];
  };
}
