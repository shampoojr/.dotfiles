{config, ...}:{
  imports = [
    ../../nix/nix.nix
    ../../nix/utils.nix
    ../../nix/users.nix

    ./variables.nix
    ./hardware-configuration.nix
  ];
  home-manager.users."${config.var.username}" = import ./home.nix;
}