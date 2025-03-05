{ config, pkgs, ... }:
{
  imports = [

  ];
  programs = {

    #neovim = {
    #  enable = true;
    #};
     nixvim = {
       enable = true;
     };
  };
}
