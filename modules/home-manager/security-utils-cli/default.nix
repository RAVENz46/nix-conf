{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.security-utils-cli;
in
{
  options = {
    security-utils-cli = {
      enable = lib.mkEnableOption "Enables all cli security utilities";

      excludePackages = lib.mkOption {
        description = "List of security-utils-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
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
      ++ lib.optionals stdenv.isLinux [ oo7 ]
      ++ lib.optionals (stdenv.system == "x86_64-linux") [ noseyparker ]
    );
  };
}
