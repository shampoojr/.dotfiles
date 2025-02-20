{ config, pkgs, ... }:
{

  programs = {
    tmux = {
      enable = true;
      clock24 = true;
      shell = "zsh";
      terminal = "tmux-256color";
      # aggressiveResize = true; -- Disabled to be iTerm-friendly
      baseIndex = 1;
      newSession = true;
      # Stop tmux+escape craziness.
      escapeTime = 0;
      # Force tmux to use /tmp for sockets (WSL2 compat)
      secureSocket = false;

      plugins = with pkgs; [
        tmuxPlugins.better-mouse-mode
      ];

      enableShellIntegration = true;

      extraConfig = ''

      '';
    };
  };
}
