{ config, pkgs, ... }:
{

  programs.spicetify =
    let
      spicetify = spicetify-nix.lib.mkSpicetify pkgs {
       enabledExtensions = with spicePkgs.extensions; [
         hidePodcasts
         shuffle # shuffle+ (special characters are sanitized out of extension names)
       ];
       enabledCustomApps = with spicePkgs.apps; [
         newReleases
         ncsVisualizer
       ];
       enabledSnippets = with spicePkgs.snippets; [
         rotatingCoverart
         pointer
       ];

       theme = spicePkgs.themes.catppuccin;
       colorScheme = "mocha";
      };
    in
    {
      enable = true;


    };
}
