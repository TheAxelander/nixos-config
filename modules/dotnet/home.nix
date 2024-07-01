{ config, pkgs, ... }:

{
  home.sessionVariables = {
    DOTNET_ROOT = pkgs.dotnet-sdk_8;
    PATH = "$PATH:/home/axelander/.dotnet/tools";
  };
}