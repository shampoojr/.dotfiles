{pkgs,inputs,...}:{
  wayland.windowManager.hyprland = {
    plugins = [
      inputs.hyprland-plugins.packages.${pkgs.system}.hyprbars
      inputs.hyprland-plugins.packages.${pkgs.system}.hyprtrails
      inputs.hyprland-plugins.packages.${pkgs.system}.hyprexpo
      inputs.hyprland-plugins.packages.${pkgs.system}.borders-plus-plus
      inputs.Hyprspace.packages.${pkgs.system}.Hyprspace
    ];
    settings = {
      plugins = {

      };
    };
  };
}
