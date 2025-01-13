{ lib, ... }:

{
  options = {
    userList = lib.mkOption {
      description = "List of users";
      type = lib.types.listOf lib.types.str;
      default = [ ];
    };
  };
}
