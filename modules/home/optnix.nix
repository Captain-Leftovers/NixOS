{
  inputs,
  config,
  pkgs,
  ...
}:
let
  optnixLib = inputs.optnix.mkLib pkgs;
in
{
  programs.optnix = {
    enable = true;
    settings.scopes.home-manager = {
      description = "Home Manager options for all systems";
      options-list-file = optnixLib.hm.mkOptionsListFromHMSource {
        home-manager = inputs.home-manager;
      };
    };
  };

  home.packages = [ inputs.optnix.packages.${pkgs.system}.optnix ];
}
