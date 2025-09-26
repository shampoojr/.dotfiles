{
  pkgs,
  inputs,
  ...
}: {
  wayland.windowManager.hyprland = {
    plugins = [
      # inputs.hyprland-plugins.packages.${pkgs.system}.hyprbars
      # inputs.hyprgrass.packages.${pkgs.system}.hyprgrass
      # inputs.hyprgrass.packages.${pkgs.system}.hyprgrass-pulse
      # inputs.hyprland-plugins.packages.${pkgs.system}.hyprexpo
      #inputs.hyprland-plugins.packages.${pkgs.system}.borders-plus-plus
      # inputs.hyprland-plugins.packages.${pkgs.system}.hyprtrails
      #inputs.Hyprspace.packages.${pkgs.system}.Hyprspace # Not updated
    ];
    settings = {
    };
  };
}
