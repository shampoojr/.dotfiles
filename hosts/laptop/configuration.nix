{config, ...}:{
  home-manager.users."${config.var.username}" = import ./home.nix;
}