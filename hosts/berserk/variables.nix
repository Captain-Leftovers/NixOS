{
  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "BeeOnDWeb";
  gitEmail = "beeondweb@gmail.com";

  # Hyprland Settings
  # Configure your monitors here - this is host-specific
  # ex "monitor=HDMI-A-1, 1920x1080@60,auto,1"
  # You'll need to update this after installation based on your actual monitors
  extraMonitorSettings = ''
    monitor=desc:Lenovo Group Limited 0x416B,3840x2160@60.0,4678x1705,2.0
    monitor=desc:ASUSTek COMPUTER INC VG279 K8LMQS102647,1920x1080@60.0,3598x761,1.0
    monitor=desc:ASUSTek COMPUTER INC VG279 K8LMQS102647,transform,1
    monitor=desc:Lenovo Group Limited LEN L28u-30 U1B512XD,3840x2160@60.0,4678x625,2.000000000000000

  '';

  # Waybar Settings
  clock24h = false;

  # Program Options
  browser = "vivaldi"; # Set Default Browser (google-chrome-stable for google-chrome)
  terminal = "kitty"; # Set Default System Terminal
  keyboardLayout = "us";
  consoleKeyMap = "us";

  # For Nvidia Prime support with AMD
  intelID = "PCI:34:0:0"; # AMD integrated GPU (renamed variable kept for compatibility)
  nvidiaID = "PCI:1:0:0"; # NVIDIA discrete GPU

  # Enable NFS
  enableNFS = true;

  # Enable Printing Support
  printEnable = false;

  # Enable Thunar GUI File Manager
  thunarEnable = true;

  # Enable Controller Support For Gaming
  controllerSupportEnable = true;

  # Enable Flutter Development Environment
  flutterdevEnable = false;

  # Enable Stylix System Theming
  stylixEnable = true;

  # Enable Vicinae Launcher
  vicinaeEnable = true;

  # Enable Syncthing File Synchronization
  syncthingEnable = true;

  # Display Manager Options (choose one - add to host's default.nix)
  # services.greetd.enable = true;           # greetd with tuigreet (default)
  # services.displayManager.ly.enable = true; # ly with matrix animation

  # Set Stylix Image
  #stylixImage = ../../wallpapers/AnimeGirlNightSky.jpg;
  # stylixImage = ../../wallpapers/22.png;
  stylixImage = ../../wallpapers/berserk/1.png;
  # stylixImage = ../../wallpapers/anime/frieren.jpeg;

  # Set Waybar
  # Includes alternates such as:
  # Just uncomment the one you want and comment out the others

  #waybarChoice = ../../modules/home/waybar/Jerry-waybars.nix;
  #waybarChoice = ../../modules/home/waybar/waybar-simple.nix;
  #waybarChoice = ../../modules/home/waybar/waybar-curved.nix;
  #waybarChoice = ../../modules/home/waybar/waybar-nekodyke.nix;
  waybarChoice = ../../modules/home/waybar/waybar-ddubs.nix;
  #waybarChoice = ../../modules/home/waybar/waybar-ddubs-2.nix;

  # Set Animation style
  # Available options are:
  # animations-def.nix  (standard)
  # animations-end4.nix (end-4 project)
  # animations-dynamic.nix (ml4w project)
  # animations-moving.nix (ml4w project)
  # Just change the name after the - and rebuild
  animChoice = ../../modules/home/hyprland/animations-end4.nix;
  #animChoice = ../../modules/home/hyprland/animations-def.nix;
  #animChoice = ../../modules/home/hyprland/animations-dynamix.nix;
  #  Note: Moving changes window resizing it shrinks then pops back
  #animChoice = ../../modules/home/hyprland/animations-moving.nix;
}
