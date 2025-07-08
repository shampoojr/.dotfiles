{
  config,
  pkgs,
  inputs,
  ...
}:
{
  home = {
    inherit (config.var) username;
    file = { };
    homeDirectory = "/home/" + config.var.username;
    sessionVariables = { };

    stateVersion = "24.11";
  };

  imports = [
    ./variables.nix
    #../home1/imports
  ];
  nixpkgs.config.allowUnfree = true;

  extraSpecialArgs = { inherit inputs; };
  programs.home-manager.enable = true;
}
