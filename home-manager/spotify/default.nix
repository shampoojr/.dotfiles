{
  inputs,
  pkgs,
  flake,
  spicePkgs,
  ...
}:
let
  inherit (flake) inputs;
in
{
  programs.spicetify =
    let

    in

    {
      dontInstall = true;

      enable = true;

      enabledExtensions = with spicePkgs.extensions; [
        hidePodcasts
        volumePercentage
        beautifulLyrics
        shuffle # shuffle+ (special characters are sanitized out of extension names)
      ];

      enabledCustomApps = with spicePkgs.apps; [
        marketplace
      ];

      enabledSnippets = with spicePkgs.snippets; [
        fixListenTogetherButton
        removeDuplicatedFullscreenButton
        declutterNowPlayingBar
        queueTopSidePanel
        fixLikedIcon
        pointer
        hideLyricsButton
        hideNowPlayingViewButton
        hideFullScreenButton
        hideMiniPlayerButton
        hideWhatsNewButton
        hideFriendActivityButton
        hideMadeForYou
      ];

      theme = spicePkgs.themes.ziro;
      #colorScheme = "";
    };

}
