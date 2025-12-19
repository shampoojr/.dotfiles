{inputs, ...}: {
  MSI = {
    system = "x86_64-linux";
    modules = [./desktop/configuration.nix];
  };
  LT590 = {
    system = "x86_64-linux";
    modules = [./laptop/configuration.nix];
  };
}
