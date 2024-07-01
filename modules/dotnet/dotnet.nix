{ pkgs, home-manager, ... }:

#let
#  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz";
#in

{
#  imports = [ 
#    (import "${home-manager}/nixos")      
#  ];

  # System packages
  environment.systemPackages = with pkgs; [
    dotnet-sdk_8
  ];

  # Update PATH

#  home-manager.users.axelander.programs.zsh.oh-my-zsh.extraConfig = ''
#    export DOTNET_ROOT=${pkgs.dotnet-sdk_8}
#    export PATH=''$PATH:/home/axelander/.dotnet/tools
#  '';
}

