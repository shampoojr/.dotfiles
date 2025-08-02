{ ... }:
{
  programs.eza = {
    enable = true;
    icons = "auto";
    git = true;
    extraOptions = [
      "-a"  # All
      "-l"  # Long
      "-R"  # Recurse
      "-L"  # Level
      "4" # Level
    ];
  };
}