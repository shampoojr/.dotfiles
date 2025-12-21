{inputs, ...}: {
  shampoojr = {
    system = "x86_64-linux";
    modules = [
      ./home.nix
      inputs.nix-flatpak.homeManagerModules.nix-flatpak
    ];
  };
}
