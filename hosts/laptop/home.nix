{
  config,
  pkgs,
  inputs,
  ...
}:
{
  home = {
    file = { };
    homeDirectory = "/home/" + config.var.username;
    sessionVariables = { };
    inherit (config.var) username;
    stateVersion = "24.11";
  };

  imports = [
    ../home1/imports
  ];
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
  extraSpecialArgs = { inherit inputs; };
}
