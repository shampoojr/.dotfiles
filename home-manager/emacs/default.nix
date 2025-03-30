{ config, pkgs, ... }:
{
  programs.emacs = {
    enable = true;
    extraConfig = ''
(require 'package)
(add-to-list 'package-archives
'("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)'';
    package = pkgs.emacs;
  };
}
