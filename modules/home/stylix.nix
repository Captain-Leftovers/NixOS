{
  host,
  lib,
  ...
}:
let
  inherit (import ../../hosts/${host}/variables.nix) stylixEnable;
in
lib.mkIf stylixEnable {
  stylix.autoEnable = true;

  stylix.targets = {
    waybar.enable = true;
    rofi.enable = false;
    hyprland.enable = true;
    hyprlock.enable = false;
    ghostty.enable = true;
    qt.enable = true;
    zed.enable = true;
    # chromium.enable = true;  #??? not working
  };

  services.nwg-drawer-stylix.enable = true;
}
