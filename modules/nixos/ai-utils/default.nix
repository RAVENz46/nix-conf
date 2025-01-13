{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.ai-utils;
  notExcluded = pkg: !(builtins.elem pkg config.ai-utils.excludePackages);
in
{
  options = {
    ai-utils = {
      enable = lib.mkEnableOption "Enables all ai utilities";

      excludePackages = lib.mkOption {
        description = "List of ai-utils packages to exclude from the default system";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    services = {
      ollama = {
        enable = notExcluded pkgs.ollama;
      };

      tabby = {
        enable = notExcluded pkgs.tabby;
      };
    };
  };
}
