{ ... }:
{
  programs = {
    gh = {
      enable = true;
    };
    git = {
      enable = true;
      userName = "shampoojr";
      userEmail = "shampoojr@outlook.com";
      extraConfig = {
        init.defaultBranch = "main";
        safe.directory = "/etc/nixos";
      };
    };
  };
}
