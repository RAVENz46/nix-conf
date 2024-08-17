{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.observability;
  notExcluded = pkg: !(builtins.elem pkg config.observability.excludePackages);
in
{
  options = {
    observability = {
      enable = mkEnableOption "Enables observability";

      excludePackages = mkOption {
        description = "List of observability packages to exclude from the default system";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    services = {
      below = {
        enable = notExcluded pkgs.below;
      };

      vector = {
        enable = notExcluded pkgs.vector;
        settings = { };
      };
    };
  };
}
