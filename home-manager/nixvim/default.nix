{
  pkgs,
  inputs,
  nixvim,
  imports,
  ...
}:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
  ];
  programs = {
    nixvim = {
      enable = true;
    };
  };
}
