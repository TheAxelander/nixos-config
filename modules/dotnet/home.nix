{ pkgs, ... }:

{
  home.sessionVariables = {
    DOTNET_ROOT = pkgs.dotnet-sdk_8;
    PATH = "$PATH:$HOME/.dotnet/tools";
  };
}