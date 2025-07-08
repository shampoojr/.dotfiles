{ config, lib, ... }:
{
  config.var = {
    hotsname = "shampoojr";
    username = "shampoojr";
    configDirectory = "/home/" 
    + config.var.username 
    + "/.config/nixos";

    options = {
      var = lib.mkOption {
        type = lib.types.attrs;
        default = { };
      };
    };
  };
}
