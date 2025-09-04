{ ... }:
{
  programs.vesktop = {
    settings = {
      tray = true;
      discordBranch = "ptb";
      hardwareAcceleration = true;
      hardwareVideoAcceleraton = true;
      arRPC = false;
      appBadge = false;
      enableSplashScreen = false;
      disableSmoothScroll = true;
      minimizeToTray = false;
      openLinksWithElectron = true;
      staticTitle = true;
      enableMenu = true;
      disableMinSize = true;
      clickTrayToShowHide = true;
      customTitleBar = false;
      spellCheckLanguages = [ "NORWAY" ];
    };
  };
}
