{ pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    bat
    btop
    eza
    mc
    micro
    wget
  ];
}
