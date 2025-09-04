{ ... }:
{
  programs = {
    direnv = {
      enable = true;
    };
    
    java = {
      enable = true;
    };
  };

  services = {
    mpris-proxy = {
      enable = true;
    };
  };
}
