{ pkgs, config, ... }:
{
  programs = {
    vscode = {
      enable = true;
      profiles = {
        default = {
          extensions = with pkgs.vscode-extensions; [
            bbenoist.nix
            jnoortheen.nix-ide
            brettm12345.nixfmt-vscode
          ];
        };
      };
    };
  };
}
