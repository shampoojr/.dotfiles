{
  config,
  lib,
  ...
}: {
  programs = {
    zsh = {
      dotDir = "${config.home.homeDirectory}";
      enable = true;
      autosuggestion.enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      sessionVariables = {
        XDG_SCREENSHOTS_DIR = "$HOME/Pictures/Screenshots";
        QS_CONFIG_PATH = "$XDG_CONFIG_HOME/quickshell";
      };

      history = {
        size = 10000;
        ignoreAllDups = true;
        path = "${config.home.homeDirectory}/.zsh_history";
        ignorePatterns = [
          "rm *"
          "cp *"
          "pkill *"
        ];
      };

      shellAliases = {
        cd = "z";
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
