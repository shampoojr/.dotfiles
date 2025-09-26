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
      userName = "shampoojr";
      userEmail = "shampoojr@outlook.com";
      extraConfig = {
        init = {
          defaultBranch = "main";
        };
      };
      lfs.enable = true;
      aliases = {
        ci = "commit";
        co = "checkout";
        ga = "git add";
        s = "status";
      };
    };
  };
}
