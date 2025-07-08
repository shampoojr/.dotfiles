{ config, lib, ... }:
{
  config.var = {
    hotsname = "shampoojr";
    username = "shampoojr";
    configDirectory = 
      "/home/" 
    + config.var.username
    + "/.dotfiles/nix";

    options = {
      var = lib.mkOption {
        type = lib.types.attrs;
        default = { };
      };
    };
  };
}
