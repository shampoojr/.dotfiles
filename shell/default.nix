{
  config,
  zsh,
  home-manager,
  pkgs,
  ...
}:
{
  imports = [
    #./tmux.nix
  ];
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

      extraConfig = ''

      '';
    };


    zsh = {
      enable = true;

      enableCompletion = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        ls = "eza";
        update = "sudo nixos-rebuild switch";
        hm = "home-manager switch";
        all = "update && hm";
      };

      initExtra = "fastfetch";

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
