{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.log-utils-cli;
in
{
  options = {
    log-utils-cli = {
      enable = lib.mkEnableOption "Enables all cli log utilities";

      excludePackages = lib.mkOption {
        description = "List of log-utils-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        angle-grinder
        fblog
        tailspin
      ]
    );
  };
}
