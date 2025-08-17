{ ... }:
{

  programs = {

    zsh = {
      enable = true;

      autosuggestion.enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;

      sessionVariables = {
        XDG_SCREENSHOTS_DIR = "$HOME/Pictures/Screenshots";
      };

      shellAliases = {
        hflake = "home-manager switch --flake .";
        sflake = "sudo nixos-rebuild switch --flake .";
      };

      initContent = ''

        if [[ -o interactive ]]; then
        fastfetch
        fi

      '';

      # zplug = {
      #   enable = true;
      #   #plugins = [];
      # };

    };
    
  };
}