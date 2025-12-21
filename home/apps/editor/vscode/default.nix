{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    profiles = {
      default = {
        extensions = with pkgs.vscode-extensions; [
          yzhang.markdown-all-in-one
          jnoortheen.nix-ide
          bbenoist.nix
          mhutchie.git-graph
          github.github-vscode-theme
          pkief.material-icon-theme
          zhuangtongfa.material-theme
          enkia.tokyo-night
          kamadorueda.alejandra
          catppuccin.catppuccin-vsc-icons
          catppuccin.catppuccin-vsc
          mhutchie.git-graph
          jnoortheen.nix-ide
          codezombiech.gitignore
        ];

        userSettings = {
          "editor.defaultFormatter" = "theqtcompany.qt-qml";
          "editor.fontSize" = 18;
          "editor.fontFamily" = "FiraCode Nerd Font";
          "editor.formatOnSave" = true;
          "editor.minimap.renderCharacters" = false;
          "editor.minimap.scale" = 2;
          "[nix]" = {
            "editor.defaultFormatter" = "kamadorueda.alejandra";
            "editor.formatOnPaste" = true;
            "editor.formatOnSave" = true;
            "editor.formatOnType" = false;
          };
          "alejandra.program" = "alejandra";
          "workbench.colorTheme" = "Catppuccin Mocha";
          "vscord.status.state.text.editing" = "Working on {file_name}{file_extension}:{current_line}:{current_column}";
        };
      };
    };
  };
}
