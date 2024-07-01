# NixOs Config

## Installation

### Install Flake

``` bash
sudo nano /etc/nixos/configuration.nix
```

Add below line

``` nix
nix.settings.experimental-features = [ "nix-command" "flakes" ];
```

``` bash
sudo nixos-rebuild switch
```

### Install Home Manager

Install as Standalone Version

``` bash
nix-channel --add https://github.com/nix-community/home-manager/archive/release-24.05.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
```

### Clone Repository

``` bash
nix-shell -p git --command "git clone https://github.com/TheAxelander/nixos-config.git ~/.nixos-config" 
```

## Build

``` bash
cd ~/.nixos-config
sudo nixos-rebuild switch --flake .#system --impure
home-manager switch --flake .#user
```