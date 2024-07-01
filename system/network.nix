{ systemSettings, ... }:

{
  networking = {
    interfaces.${systemSettings.networkinterface} = {
      useDHCP = false;
      ipv4 = {
        addresses = [
          {
            address = systemSettings.ipv4address;
            prefixLength = 24;
          }
        ];
      };
    };

    defaultGateway = {
      address = systemSettings.ipv4gateway;
      interface = systemSettings.networkinterface;
    };

    nameservers = [ systemSettings.ipv4dns ];
  };
}
