{
  config,
  zsh,
  home-manager,
  pkgs,
  imports,
  ...
}:
let

  fpath = "~/.dotfiles";
in
{
  imports = [
    ./cava
    ./eza
    ./fzf
    ./neovim
    ./tmux
  ];

  programs = {

    zsh = {
      enable = true;

      enableCompletion = true;
      autosuggestion.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        flake = "all --flake";
        ls = "eza";
        update = "sudo nixos-rebuild switch";
        hm = "home-manager switch";
        all = "update && hm";
      };

      initExtra = ''
        if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
            tmux attach-session -t default || tmux new-session -s default
        fi

        if [[ -o interactive ]]; then
            fastfetch
        fi

      '';

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
