# zen-qwa.nix — makes Quick Web Apps (Flatpak) see Zen, declaratively.
{
  config,
  lib,
  pkgs,
  ...
}:

let
  # Make sure the Zen HM module is actually enabled so we can reuse its package.
  hasZen = (config.programs.zen-browser.enable or false);

  # Use the package that the zen HM module provides (reliable even if it comes from your flake input).
  zenPkg = config.programs.zen-browser.package;

  # Resolve the actual executable name from the package (usually "zen").
  zenExe = lib.getExe' zenPkg "zen";
in
{
  assertions = [
    {
      assertion = hasZen;
      message = "zen-qwa.nix: programs.zen-browser.enable must be true (enable your Zen HM module first).";
    }
  ];

  # 1) A desktop entry that QWA will classify as a WebBrowser and can see in ~/.local/share/applications
  xdg.desktopEntries.zen-qwa = {
    name = "Zen Browser";
    genericName = "Web Browser";
    comment = "Firefox-based Zen browser";
    exec = "${zenExe} %u"; # QWA passes the URL to %u
    terminal = false;
    type = "Application";
    categories = [
      "Network"
      "WebBrowser"
    ];
    mimeType = [
      "text/html"
      "application/xhtml+xml"
      "x-scheme-handler/http"
      "x-scheme-handler/https"
    ];
    startupNotify = true;
  };

  # 2) Rebuild the desktop DB so Flatpaks/portals discover the new entry
  home.activation.refreshDesktopDb = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    update-desktop-database "${config.xdg.dataHome}/applications" || true
  '';

  # 3) Give QWA (Flatpak dev.heppen.webapps) read-only access to your desktop entries (idempotent)
  home.activation.qwaFlatpakOverride = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    if command -v flatpak >/dev/null 2>&1; then
      flatpak override dev.heppen.webapps \
        --filesystem="${config.xdg.dataHome}/applications:ro" \
        --filesystem="${config.home.profileDirectory}/share/applications:ro" \
        --filesystem="/run/current-system/sw/share/applications:ro" || true
    fi
  '';
}
