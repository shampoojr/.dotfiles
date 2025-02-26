{
  config,
  pkgs,
  spicetify-nix,
  inputs,
  spicePkgs,
  ...
}:
{
  programs.spicetify.dontInstall = true;

  programs.spicetify = {
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
