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
        hm = "nh home switch";
        os = "nh os switch";
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
