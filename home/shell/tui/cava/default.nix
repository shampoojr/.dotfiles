{...}: {
  programs.cava = {
    enable = true;
    settings = {
      color = {
        background = "#1e1e2e";

        gradient = 1;

        gradient_color_1 = "#94e2d5";
        gradient_color_2 = "#89dceb";
        gradient_color_3 = "#74c7ec";
        gradient_color_4 = "#89b4fa";
        gradient_color_5 = "#cba6f7";
        gradient_color_6 = "#f5c2e7";
        gradient_color_7 = "#eba0ac";
        gradient_color_8 = "#f38ba8";
      };
      general = {
        framerate = 60;
        bars = 20;
      };
      input.method = "alsa";
      smoothing.noise_reduction = 88;
      # eq = [
      #   "1=0"
      #   "2=1"
      #   "3=0"
      #   "4=1"
      #   "5=0"
      # ];
    };
  };
}
