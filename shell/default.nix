{
  config,
  zsh,
  home-manager,
  pkgs,
  imports,
  ...
}:
{

  programs = {

    # fzf = {
    #   enable = true;
    #   enableZshIntegration = true;
    # };

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

      extraConfig = ''

      '';
    };

    zsh = {
      enable = true;

      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        flake = "all --flake . ~/.dotfiles";
        ls = "eza";
        update = "sudo nixos-rebuild switch";
        hm = "home-manager switch";
        all = "update && hm";
      };

      initExtra = ''
        if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
          tmux attach-session -t default || tmux new-session -s default
        fi'';

      zplug = {
        enable = true;
        plugins = [
          { name = "zsh-users/zsh-autosuggestions"; } # Simple plugin installation
        ];
      };
    };

    oh-my-posh = {
      enable = true;
      useTheme = "atomicBit";
    };

    zoxide = {
      enable = true;
    };
  };
}
