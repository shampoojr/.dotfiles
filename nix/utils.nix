{config, pkgs, inputs, ...}:let
hostname = config.var.hostname;  
in{
  networking.hostName = hostname;
  networking.networkmanager.enable = true;

}