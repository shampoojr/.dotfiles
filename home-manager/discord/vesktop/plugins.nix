{ ... }:
{
  programs.vesktop = {
    vencord = {
      settings = {
        plugins = {
          betterSettings = {
            enable = true;
          };
          ircColors = {
            enable = true;
          };
          betterRoleDot = {
            enable = true;
          };
        };
      };
    };
  };
}
