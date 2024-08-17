{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.databases;
  notExcluded = pkg: !(builtins.elem pkg config.databases.excludePackages);
in
{
  options = {
    databases = {
      enable = mkEnableOption "Enables all databases";

      excludePackages = mkOption {
        description = "List of databases packages to exclude from the default system";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    services = {
      influxdb2 = {
        enable = notExcluded pkgs.influxdb2;
      };

      surrealdb = {
        enable = notExcluded pkgs.surrealdb;
      };
    };
  };
}
