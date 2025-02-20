{ config, pkgs, ... }:
{
  programs = {
    fzf = {
      enable = true;
      enableZshIntegration = true;
      defaultOptions = [
        "--height 40% --tmux right,40% --layout reverse --border top"
      ];

      historyWidgetOptions = [
        "--height 40% --tmux right,40% --layout reverse --border top"
      ];

      tmux = {
        enableShellIntegration = true;
        shellIntegrationOptions = [
          "right,40%,100%"
        ];
      };
    };
  };
}
