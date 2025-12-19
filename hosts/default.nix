{inputs, ...}: {
  computer = {
    system = "x86_64-linux";
    modules = [./computer/configuration.nix];
  };
  laptop = {
    system = "x86_64-linux";
    modules = [./laptop/configuration.nix];
  };
}
