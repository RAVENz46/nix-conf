{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

with lib;
let
  cfg = config.android-utils;
  notExcluded = pkg: !(builtins.elem pkg config.android-utils.excludePackages);
in
{
  options = {
    android-utils = {
      enable = mkEnableOption "Enables all android utilities";

      excludePackages = mkOption {
        description = "List of android-utils packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs; [ scrcpy ] ++ optionals stdenv.isLinux [ universal-android-debloater ]
    );
  };
}
