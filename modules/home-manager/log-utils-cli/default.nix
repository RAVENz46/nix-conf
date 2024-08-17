{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.log-utils-cli;
in
{
  options = {
    log-utils-cli = {
      enable = mkEnableOption "Enables all cli log utilities";

      excludePackages = mkOption {
        description = "List of log-utils-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        angle-grinder
        fblog
        tailspin
      ]
    );
  };
}
