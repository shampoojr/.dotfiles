{config, inputs, ...}: {

  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = true;
  };

  nix = {
    nixPath = ["nixpkgs=${inputs.nixpkgs}"];
    channel.enable = false;
    extraOptions = ''warn-drity = false'';
  };
  settings = {
    auto-optimise-store = true;
    experimental-features = [ "nix-command" "flakes" ];
    substituters = [
      "https://cache.nixos.org?priority=10"
    ];
  };
}