{ config, pkgs, ... }:
{
  programs = {
    fzf = {
      enable = true;

      enableZshIntegration = true;

      defaultOptions = [

      ];

      defaultCommand = [
        "fd --type f"
      ];

      historyWidgetOptions = [

      ];

      changeDirWidgetOptions = [

      ];

      changeDirWidgetCommand = [

      ];

      fileWidgetOptions = [

      ];

      fileDirWidgetCommand = [

      ];

      tmux = {
        enableShellIntegration = true;

        shellIntegrationOptions = [
          "-r 40%"
        ];
      };
    };
  };
}
