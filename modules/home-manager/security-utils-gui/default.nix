{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.security-utils-gui;
in
{
  options = {
    security-utils-gui = {
      enable = mkEnableOption "Enables all gui security utilities";

      excludePackages = mkOption {
        description = "List of security-utils-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
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
