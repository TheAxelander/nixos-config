{ authorizedKeys ? [], ... }:

{
  # Configure SSH
  services.openssh = {
    enable = true;
    settings = {
      PermitRootLogin = "yes";
    };
  };
  users.users.axelander.openssh.authorizedKeys.keys = authorizedKeys;
}
