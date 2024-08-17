{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.security-utils-cli;
in
{
  options = {
    security-utils-cli = {
      enable = mkEnableOption "Enables all cli security utilities";

      excludePackages = mkOption {
        description = "List of security-utils-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        cotp
        feroxbuster
        fim-rs
        legba
        lynis
        openvas-scanner
        paper-age
        pdfrip
        ripsecrets
        sbomnix
        vulnix
      ]
      ++ optionals stdenv.isLinux [ oo7 ]
      ++ optionals (stdenv.system == "x86_64-linux") [ noseyparker ]
    );
  };
}
