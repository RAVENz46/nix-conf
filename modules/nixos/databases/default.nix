{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.databases;
  notExcluded = pkg: !(builtins.elem pkg config.databases.excludePackages);
in
{
  options = {
    databases = {
      enable = lib.mkEnableOption "Enables all databases";

      excludePackages = lib.mkOption {
        description = "List of databases packages to exclude from the default system";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
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
