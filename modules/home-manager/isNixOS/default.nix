{ lib, ... }:

with lib;
{
  options = {
    isNixOS = mkOption {
      type = types.bool;
      default = false;
    };
  };
}
