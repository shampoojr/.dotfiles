{
  lib,
  inputs,
  pkgs,
  system,
  ...
}: {
  imports = [
    inputs.spicetify-nix.homeManagerModules.default
  ];
  programs.spicetify = let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${system};
  in {
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      fullAlbumDate
      #oneko
      #catJamSynced
      simpleBeautifulLyrics
      songStats
      betterGenres
      hidePodcasts
      lastfm
      webnowplaying
      beautifulLyrics
    ];
    enabledCustomApps = with spicePkgs.apps; [
      #marketplace
      lyricsPlus
      ncsVisualizer
    ];
    enabledSnippets = with spicePkgs.snippets; [
    ];
    #theme = spicePkgs.themes.text;
    theme = spicePkgs.themes.catppuccin;
    colorScheme = "mocha";
  };
}
