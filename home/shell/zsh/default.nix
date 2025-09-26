{...}: {
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
        clear = ''printf "\033[2J\033[3J\033[1;1H"'';
        cls = ''printf "\033[2J\033[3J\033[1;1H"'';
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
