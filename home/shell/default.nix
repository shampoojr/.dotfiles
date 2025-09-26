{ imports, ... }:
{
  imports = [
    ./tui
    ./zsh
  ];

  programs = {
    nix-index = {
      enable = true;
      enableZshIntegration = true;
    };

    oh-my-posh = {
      enable = true;
      useTheme = "star";
    };

    zoxide = {
      enable = true;
    };
  };
}
