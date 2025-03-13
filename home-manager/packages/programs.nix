{config, pkgs, ...}:{
  programs = {

    java = {
      enable = true;
    };

    direnv={
      enable = true;
    };
  };
  
  services = {
    mpris-proxy = {
      enable = true;
    };
  };
}