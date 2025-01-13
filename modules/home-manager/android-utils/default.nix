{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.android-utils;
in
{
  options = {
    android-utils = {
      enable = lib.mkEnableOption "Enables all android utilities";

      excludePackages = lib.mkOption {
        description = "List of android-utils packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs; [ scrcpy ] ++ lib.optionals stdenv.isLinux [ universal-android-debloater ]
    );
  };
}
