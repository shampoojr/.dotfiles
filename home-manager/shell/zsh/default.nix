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
        flake = "sflake && hflake";
        hflake = "hm --flake .";
        hm = "home-manager switch";
        ls = "eza";
        sflake = "update --flake .#shampoojr";
        update = "sudo nixos-rebuild switch";
      };

      initContent = ''

        if [[ -o interactive ]]; then
            ponysay --pony rainbowsalute  -- shampoojr is coolest | fastfetch --file-raw -
        fi

      '';

      zplug = {
        enable = true;
        #plugins = [];
      };

    };
    
  };
}
