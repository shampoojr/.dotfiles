{ ... }:
{
  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        type = "command-raw";
        source = "pokeget pikachu --form pop-star --hide-name";
        #type = "chafa";
        #source = "~/Pictures/nixos.png";
        #height = 12;
        #width = 28;
        #source = "~/Pictures/thinkpad.txt";

        # color = {
        #   "1" = "blue";
        #   "2" = "cyan";
        #   "3" = "red";
        #   "4" = "white";
        # };
      };
      display = {
        separator = ": 󰁕 ";
      };
      modules = [
        {
          type = "title";
          format = "          {user-name-colored}{at-symbol-colored}{host-name-colored}";

        }
        "break"
        {
          type = "OS";
          key = "╭";
          keyColor = "blue";
          format = "{2}";
        }
        {
          type = "host";
          key = "├";
          keyColor = "blue";
          format = "{3}";
        }
        {
          type = "kernel";
          key = "├";
          keyColor = "blue";
          format = "{1}";
        }
        {
          type = "packages";
          key = "├󰏓";
          keyColor = "blue";
          format = "{1}";
        }
        {
          type = "wm";
          key = "├󰧨";
          keyColor = "blue";
          format = "{2}";
        }
        {
          type = "terminal";
          key = "├";
          keyColor = "blue";
          format = "{1}";
        }
        {
          type = "shell";
          key = "├";
          keyColor = "blue";
          format = "{1}";
        }
        {
          type = "terminalfont";
          key = "├";
          keyColor = "blue";
          format = "{2}";
        }
        {
          type = "uptime";
          key = "╰󱑀";
          keyColor = "blue";
        }
        "break"
        {
          type = "colors";
          symbol = "circle";
          paddingLeft = 10;
          range = [
            1
            8
          ];
        }
      ];
    };
  };
}
