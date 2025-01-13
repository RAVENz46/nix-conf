{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.moduleName;
  notExcluded = pkg: !(builtins.elem pkg config.moduleName.excludePackages);
in
{
  options = {
    moduleName = {
      enable = lib.mkEnableOption "Enables all CHANGEME";

      excludePackages = lib.mkOption {
        description = "List of moduleName packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (with pkgs; lib.optionals stdenv.isLinux [ ]);

    programs = {
      packageName = {
        enable = notExcluded pkgs.packageName && pkgs.stdenv.isLinux;
      };
    };
  };
}
