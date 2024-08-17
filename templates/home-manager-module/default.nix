{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.moduleName;
  notExcluded = pkg: !(builtins.elem pkg config.moduleName.excludePackages);
in
{
  options = {
    moduleName = {
      enable = mkEnableOption "Enables all CHANGEME";

      excludePackages = mkOption {
        description = "List of moduleName packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (with pkgs; optionals stdenv.isLinux [ ]);

    programs = {
      packageName = {
        enable = notExcluded pkgs.packageName && pkgs.stdenv.isLinux;
      };
    };
  };
}
