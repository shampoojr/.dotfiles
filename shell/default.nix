{
  config,
  zsh,
  home-manager,
  ...
}:
{
  programs = {

    zsh = {
      enable = true;

      enableCompletion = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        ls = "eza";
        update = "sudo nixos-rebuild switch";
        hm = "home-manager switch";
        all = "update && hm";
      };

      initExtra = "fastfetch";

      zplug = {
        enable = true;
        plugins = [
          { name = "zsh-users/zsh-autosuggestions"; } # Simple plugin installation
        ];
      };
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
