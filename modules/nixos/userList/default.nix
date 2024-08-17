{ lib, ... }:

with lib;
{
  options = {
    userList = mkOption {
      description = "List of users";
      type = types.listOf types.str;
      default = [ ];
    };
  };
}
