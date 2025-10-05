#install nwg displays

{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.nwg-nwg-displays
  ];

}
