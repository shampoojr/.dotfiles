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

    nix-index = {
      enable = true;
      enableZshIntegration = true;
    };

    oh-my-posh = {
      enable = true;
      useTheme = "atomicBit";
    };

    zoxide = {
      enable = true;
    };
    
  };
}