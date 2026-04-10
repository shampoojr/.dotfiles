{...}: {
  imports = [./wayle-module.nix];
  home.packages = [
    (pkgs.callPackage ./wayle.nix {})
  ];
  # then you can use it as a normal program
  services.wayle = {
    enable = true;
    settings = {
      modules = {
        clock = {
          format = "%H:%M:%S";
          dropdown-show-seconds = false;
        };
      };
    };
  };
}
