{ pkgs, ... }:
{
  home.sessionVariables = {
    CHROME_EXECUTABLE = "/run/current-system/sw/bin/google-chrome-stable";
    BROWSER = "zen";
  };
}
