# Make <nixpkgs> resolve to your flake's nixpkgs everywhere (nixd's default is import <nixpkgs> {})
{ inputs, ... }:
{
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ]; # EEE enables flakes everywhere
  nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ]; # EEE points <nixpkgs> to your flake input
}
