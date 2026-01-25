{
  pkgs,
  config,
  lib,
  ...
}: {
  imports = [./targets];
  stylix = {
    enable = true;
    autoEnable = lib.mkDefault false;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    targets = {
    };
    polarity = "dark";
  };
}
