{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.observability;
  notExcluded = pkg: !(builtins.elem pkg config.observability.excludePackages);
in
{
  options = {
    observability = {
      enable = lib.mkEnableOption "Enables observability";

      excludePackages = lib.mkOption {
        description = "List of observability packages to exclude from the default system";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
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
