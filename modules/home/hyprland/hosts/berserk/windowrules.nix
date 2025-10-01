{host, ...}: let
  inherit
    (import ../../../../hosts/${host}/variables.nix)
    extraMonitorSettings
    ;
in {
  # Host-specific window rules for berserk
  # These will be merged with the default window rules
  windowrule = [
    # Add berserk-specific window rules here
  ];
}
