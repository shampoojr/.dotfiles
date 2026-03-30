{inputs, ...}: {
  shampoojr = {
    system = "x86_64-linux";
    modules = [
      {
        home = {
          username = "shampoojr";
          homeDirectory = "/home/shampoojr";
        };
      }
      ./home.nix
      inputs.stylix.homeModules.stylix
      inputs.nix-flatpak.homeManagerModules.nix-flatpak
    ];
  };
}
