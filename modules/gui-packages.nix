{ pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    thunderbird
    jetbrains.rider
    jetbrains.datagrip
    jetbrains.pycharm-community
  ];

  # Enable programs
  programs.firefox.enable = true;
}
