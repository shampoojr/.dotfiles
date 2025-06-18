{pkgs, config, ...}:{
programs.fastfetch = {
  enable = true;
  settings = {

    logo = {
     # type = "command-raw";
     # source = "pokeget random --hide-name";

      #source = "~/Pictures/thinkpad.txt";
      color = {
        "1" = "blue";
        "2" = "cyan";
        "3" = "red";
        "4" = "white";
      };
    };


    display = {
      separator = ": 󰁕 ";
    };


    modules = [
      {
      type = "colors";
      symbol = "circle";
      }
      "break"
      "title"
      "users"
      "OS"
      "host"
      "kernel"
      "packages"
      "DE"
      "sound"
      "terminal"
      "shell"
      "font"
      "uptime"

    ];
  };
};
}