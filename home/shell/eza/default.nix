{ ... }:
{
  programs.eza = {
    enable = true;
    icons = "auto";
    git = true;
    extraOptions = [
      "-a"
      "-l"
      "-R"
      "-L"
      "2"
    ];
  };
}
