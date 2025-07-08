{config, ...}:{
  imports = [
    ../../nix/nix.nix

    ./variables.nix
    ./hardware-configuration.nix
  ];
  home-manager.users."${config.var.username}" = import ./home.nix;
}