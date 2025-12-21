{imports, ...}: {
  imports = [
    ./tui
    ./zsh
    ./terminal
    ./quickshell
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
