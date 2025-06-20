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
    ./cava
    ./eza
    ./fzf
    ./neovim
    ./fastfetch
    ./tmux
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
