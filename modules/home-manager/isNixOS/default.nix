{ lib, ... }:

{
  options = {
    isNixOS = lib.mkOption {
      type = lib.types.bool;
      default = false;
    };
  };
}
