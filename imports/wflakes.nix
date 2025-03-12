{ inputs, ... }:
{
  imports = with inputs; [
    spicetify-nix.homeManagerModules.default
		zen-browser.packages."${system}".default
  ];
}
