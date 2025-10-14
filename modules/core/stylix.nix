{
  pkgs,
  host,
  lib,

  ...
}:
let
  inherit (import ../../hosts/${host}/variables.nix) stylixImage stylixEnable;
in
lib.mkIf stylixEnable {

  # Styling Options
  stylix = {
    autoEnable = true;
    enable = true;
    image = stylixImage;

    base16Scheme = {
      base00 = "32302f";
      base01 = "3c3836";
      base02 = "5a524c";
      base03 = "7c6f64";
      base04 = "bdae93";
      base05 = "ddc7a1";
      base06 = "ebdbb2";
      base07 = "fbf1c7";
      base08 = "ea6962";
      base09 = "e78a4e";
      base0A = "d8a657";
      base0B = "a9b665";
      base0C = "89b482";
      base0D = "7daea3";
      base0E = "d3869b";
      base0F = "bd6f3e";
    };
    polarity = "dark";
    opacity.terminal = 1.0;
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrains Mono";
      };
      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      serif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      sizes = {
        applications = 12;
        terminal = 15;
        desktop = 11;
        popups = 12;
      };
    };
  };
}
