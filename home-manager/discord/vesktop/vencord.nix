{ ... }:
{
  programs.vesktop = {
    vencord = {
      settings = {
        autoUpdate = true;
        autoUpdateNotification = true;
        notifyAboutUpdates = true;
        useQuickCss = true;
        disableMinSize = true;
        fakeNitro.enabled = false;
      };
      useSystem = false;
    };
  };
}
