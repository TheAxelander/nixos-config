{ pkgs, ... }:

{
  # System packages
  environment.systemPackages = with pkgs; [
    dotnet-sdk_8
  ];
}

