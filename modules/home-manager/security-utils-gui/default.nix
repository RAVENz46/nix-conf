{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.security-utils-gui;
in
{
  options = {
    security-utils-gui = {
      enable = lib.mkEnableOption "Enables all gui security utilities";

      excludePackages = lib.mkOption {
        description = "List of security-utils-gui packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        binocle
        gnome-obfuscate
      ]
      ++ optionals stdenv.isLinux [
        authenticator
        key-rack
      ]
      ++ optionals (stdenv.system == "x86_64-linux") [ proton-pass ]
    );
  };
}
