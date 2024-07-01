{
  description = "Axelander Flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${systemSettings.system};

      # ---- SYSTEM SETTINGS ---- #
      systemSettings = {
        system = "x86_64-linux";
        hostname = "nixelander"; 
        timezone = "Europe/Berlin";
        locale = "en_US.UTF-8";
        networkinterface = "ens18";
        ipv4address = "192.168.178.156";
        ipv4gateway = "192.168.178.1";
        ipv4dns = "192.168.178.1";
      };

      # ----- USER SETTINGS ----- #
      userSettings = {
        username = "axelander";
        name = "Alexander Preibisch";
        email = "alexpreib@outlook.com"; # email (used for certain configurations)
        dotfilesDir = "~/.nixos-config"; # absolute path of the local repo
      };

    in {
      nixosConfigurations = {
        system = lib.nixosSystem {
          system = systemSettings.system;
          modules = [ 
            ./configuration.nix
            ./modules/gui-packages.nix
            ./modules/vscode.nix
            ./modules/dotnet/dotnet.nix
            #./modules/python.nix
          ];
          specialArgs = {
            # pass config variables from above       
            inherit systemSettings;
            inherit userSettings;
          };
         };
      };
      homeConfigurations = {
        user = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ 
            ./home.nix 
            ./modules/dotnet/home.nix
          ];
          extraSpecialArgs = {
            # pass config variables from above
            inherit systemSettings;
            inherit userSettings;
          };
        };
      };
    };
}
