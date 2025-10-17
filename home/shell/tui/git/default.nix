{pkgs, ...}: {
  imports = [
    ./lazygit
    ./gitui
  ];
  programs = {
    gh = {
      enable = true;
    };
    git = {
      enable = true;
      package = pkgs.gitFull;

      settings = {
        user.name = "shampoojr";
        user.email = "shampoojr@outlook.com";
        alias = {
          ci = "commit";
          co = "checkout";
          ga = "git add";
          s = "status";
        };
        extraConfig = {
          init = {
            defaultBranch = "main";
          };
        };
      };
      lfs.enable = true;
    };
  };
}
