{
  config,
  pkgs,
  spicetify-nix,
  inputs,
  spicePkgs,
  ...
}:
let

in
{

  programs.spicetify.dontInstall = true;

  programs.spicetify = {
    enable = true;
    #config options
    enabledExtensions = with spicePkgs.extensions; [
      hidePodcasts
    #  shuffle # shuffle+ (special characters are sanitized out of extension names)
    ];
         theme = spicePkgs.themes.ziro;
     #colorScheme = "ziro";
  };

}
