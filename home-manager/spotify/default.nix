{ lib, inputs, pkgs, ... }:
{
  imports = [
    inputs.spicetify-nix.homeManagerModules.default
  ];
  programs.spicetify =
    let
      spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
    in
    {
      enable = true;
      enabledExtensions = with spicePkgs.extensions; [
        fullAlbumDate
        oneko
      ];
      enabledCustomApps = with spicePkgs.apps; [
        marketplace
      ];
      enabledSnippets = with spicePkgs.snippets; [
      ];
      theme = spicePkgs.themes.text;
    };
}
