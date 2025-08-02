{
  config,
  zsh,
  home-manager,
  pkgs,
  imports,
  ...
}:
{
  imports = [
    #./cava
    ./eza
    ./fzf
    ./fastfetch
    ./zsh
  ];

  programs = {

    oh-my-posh = {
      enable = true;
      useTheme = "atomicBit";
    };

    zoxide = {
      enable = true;
    };
    
  };
}