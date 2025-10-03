{ pkgs, ... }:
{
  home.packages = [ pkgs.waybar ]; # just install the binary for your user
}
