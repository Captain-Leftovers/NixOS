{ username, lib, ... }:
{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = lib.mkDefault true;
        grace = lib.mkDefault 15;
        hide_cursor = lib.mkDefault true;
        no_fade_in = lib.mkDefault false;
      };

      # You already used mkDefault here — keep it:
      background = lib.mkDefault [
        {
          path = "/home/${username}/Pictures/Wallpapers/16.png";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      # If Stylix also sets images, make this mkDefault too:
      image = lib.mkDefault [
        {
          path = "/home/${username}/black-don-os/img/berserk.png";
          size = 500;
          # border_size = 4;
          # border_color = lib.mkDefault "rgb(0C96F9)";
          rounding = -1;
          position = "0, 0";
          halign = "center";
          valign = "center";
        }
      ];

      # This line was the main offender — make the WHOLE list mkDefault:
      input-field = lib.mkDefault [
        {
          size = "200, 50";
          position = "0, -80";
          monitor = "";
          dots_center = lib.mkDefault true;
          fade_on_empty = lib.mkDefault false;
          font_color = lib.mkDefault "rgb(CFE6F4)";
          inner_color = lib.mkDefault "rgb(657DC2)";
          outer_color = lib.mkDefault "rgb(0D0E15)";
          outline_thickness = lib.mkDefault 5;
          placeholder_text = "Password...";
          shadow_passes = lib.mkDefault 2;
        }
      ];
    };
  };
}
