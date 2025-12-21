{inputs, ...}: {
  MSI = {
    system = "x86_64-linux";
    modules = [
      ./desktop/configuration.nix
      inputs.stylix.nixosModules.stylix
    ];
  };
  LT590 = {
    system = "x86_64-linux";
    modules = [./laptop/configuration.nix];
  };
}
