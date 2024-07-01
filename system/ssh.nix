{ authorizedKeys ? [], userSettings, ... }:

{
  # Configure SSH
  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "yes";
    };
  };
  users.users.${userSettings.username}.openssh.authorizedKeys.keys = authorizedKeys;
}
