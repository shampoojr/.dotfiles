{ inputs, ... }:
{
  imports = with inputs; [
    spicetify-nix.homeManagerModules.default
  ];
}
