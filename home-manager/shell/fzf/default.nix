{ ... }:
{
  programs = {
    fzf = {
      enable = true;

      #changeDirWidgetCommand = [];
      #changeDirWidgetOptions = [];
      #defaultCommand = [];
      #defaultOptions = [];
      enableZshIntegration = true;
      #fileWidgetCommand = [];
      #fileWidgetOptions = [];
      #historyWidgetOptions = [];

      tmux = {
        enableShellIntegration = true;
        shellIntegrationOptions = [
          "-r 30%"
        ];
      };
    };
  };
}