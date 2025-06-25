{pkgs, config, ...}:{
programs.fastfetch = {
  enable = true;
  settings = {


    logo = {
      #type = "command-raw";
      #source = "cowsay hello";
      #type = "chafa";
      #source = "~/Pictures/nixos.png";
      height = 24;
      width = 56;

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