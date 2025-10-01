{host, ...}: let
  inherit
    (import ../../../../hosts/${host}/variables.nix)
    browser
    terminal
    ;
in {
  # Host-specific binds for berserk
  # These will be merged with the default binds
  bind = [
    # Add berserk-specific binds here
  ];

  bindm = [
    # Add berserk-specific mouse binds here
  ];
}
