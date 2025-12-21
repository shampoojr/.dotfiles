{...}: let
  rosewater = "rgb(245, 224, 220)";
  flamingo = "rgb(242, 205, 205)";
  pink = "rgb(245, 194, 231)";
  mauve = "rgb(203, 166, 247)";
  red = "rgb(243, 139, 168)";
  maroon = "rgb(235, 160, 172)";
  peach = "rgb(250, 179, 135)";
  yellow = "rgb(249, 226, 175)";
  green = "rgb(166, 227, 161)";
  teal = "rgb(148, 226, 213)";
  sky = "rgb(137, 220, 235)";
  sapphire = "rgb(116, 199, 236)";
  blue = "rgb(137, 180, 250)";
  lavender = "rgb(180, 190, 254)";
  text = "rgb(205, 214, 244)";
  subtext1 = "rgb(186, 194, 222)";
  subtext0 = "rgb(166, 173, 200)";
  overlay2 = "rgb(147, 153, 178)";
  overlay1 = "rgb(127, 132, 156)";
  overlay0 = "rgb(108, 112, 134)";
  surface2 = "rgb(88, 91, 112)";
  surface1 = "rgb(69, 71, 90)";
  surface0 = "rgb(49, 50, 68)";
  base = "rgb(30, 30, 46)";
  mantle = "rgb(24, 24, 37)";
  crust = "rgb(17, 17, 27)";
in {
  programs.hyprlock = {
    enable = true;
    importantPrefixes = [];
    extraConfig = '''';
    settings = {
      general = {
        disable_loading_bar = false;
        hide_cursor = false;
        no_fade_in = true;
        text_trim = true;
        grace = true;
        ignore_empty_input = true;
      };
      background = {
        color = "${base}";
        #path = "~/Pictures/wallpaper/hollow-knight.jpg";
        blur_passes = 0;
        zindex = "-1";
      };
      label = [
        {
          text = ''cmd[update:1000] echo "$(date "+%H:%M")"'';
          font_size = 100;
          color = "${text}";
          halign = "right";
          valign = "bottom";
          position = "0,-38";
          font_family = "JetBrains Mono Nerd Font Mono ExtraBold";
          zindex = "1";
        }
        {
          text = ''cmd[update:1000] echo "$(date "+%d %b %A")"'';
          font_size = 30;
          color = "${text}";
          halign = "right";
          valign = "bottom";
          position = "-20,120";
          font_family = "JetBrains Mono Nerd Font Mono ExtraBold";
          zindex = "1";
        }
        {
          text = ''$USER'';
          font_size = 25;
          color = "${text}";
          halign = "center";
          valign = "center";
          position = "0,-5";
          font_family = "JetBrains Mono Nerd Font Mono ExtraBold";
          zindex = "1";
        }
      ];
      image = [
        {
          path = "~/Pictures/Avatars/AVI.png";
          size = "150";
          rounding = "100%";
          valign = "center";
          halign = "center";
          position = "0,100";
          zindex = "2";
        }
      ];
      input-field = [
        {
          dots_center = true;
          fade_on_empty = false;
          font_family = "JetBrains Mono Nerd Font Mono ExtraBold";
          font_color = "${text}";
          inner_color = "${mantle}";
          monitor = "eDP-1";
          outer_color = "${pink}";
          fail_color = "${red}";
          fail_text = "Try again!";
          outline_thickness = 3;
          position = "0, -80";
          size = "200, 50";
          zindex = 200;
        }
      ];
    };
  };
}
