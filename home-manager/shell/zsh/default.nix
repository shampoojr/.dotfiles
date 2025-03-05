{ pkgs, config, ... }:
{

  programs = {
    zsh = let 

    in{
      enable = true;

      autosuggestion.enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        all = "update && hm";
        flake = "all --flake .";
        hflake = "hm --flake .";
        hm = "home-manager switch";
        ls = "eza";
        sflake = "update --flake .";
        update = "sudo nixos-rebuild switch";
      };

      initExtra = ''

if [ -z "$TMUX" ]; then
    tmux_default_session_name=Default

    tmux new-session -d -s "$tmux_default_session_name"

    tmux set-option -at "$tmux_default_session_name" terminal-features ',*:RGB'

    tmux attach -t "$tmux_default_session_name"
    exit "$?"

fi


      '';

      zplug = {
        enable = true;
        #plugins = [];
      };
    };
  };
}
