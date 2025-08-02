{ pkgs, config, ... }:
{
  programs.vscode = {
    enable = true;
    profiles = {
      default = {
        extensions = with pkgs.vscode-extensions; [
          yzhang.markdown-all-in-one
          jnoortheen.nix-ide
          bbenoist.nix
          mhutchie.git-graph
          github.github-vscode-theme
          pkief.material-icon-theme
          zhuangtongfa.material-theme
          enkia.tokyo-night
        ];
      };
    };
  };
}
