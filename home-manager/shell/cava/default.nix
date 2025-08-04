{pkgs, ...}:{
  programs.cava = {
    enable = true;
    settings = {
      general = {
        framerate = 60;
        bars = 20;
        };
      input.method = "alsa";
      smoothing.noise_reduction = 88;
      eq = [
        "1=0"
        "2=1"
        "3=0"
        "4=1"
        "5=0"
      ]
    };
  };
}