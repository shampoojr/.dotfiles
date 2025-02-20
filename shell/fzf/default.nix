{ config, pkgs, ... }:
{
  programs = {
    fzf = {
      enable = true;
      
      #changeDirWidgetCommand = [];
      #changeDirWidgetOptions = [];
      #defaultCommand = [];
      #defaultOptions = [];
      #enableZshIntegration = true;
      #fileWidgetCommand = [];
      #fileWidgetOptions = [];
      #historyWidgetOptions = [];

      tmux = {
        enableShellIntegration = true;

        shellIntegrationOptions = [
          "-h 30%"
        ];
      };
    };
  };
}
