{ pkgs, config, ... }:
{

  programs = {
    zsh = {
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

        if [[ -o interactive ]]; then
            fastfetch
        fi

      '';

      zplug = {
        enable = true;
        #plugins = [];
      };
    };
  };
}
