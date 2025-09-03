{ ... }:
{
  programs.vesktop = {
    vencord = {
      settings = {
        plugins = {
          messageLogger = {
            enabled = true;
            ignoreSelf = true;
          };
          betterSettings = {
            enabled = true;
          };
          ircColors = {
            enabled = true;
          };
          betterRoleDot = {
            enabled = true;
          };
        };
      };
    };
  };
}
