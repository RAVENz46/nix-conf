{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.ai-utils;
  notExcluded = pkg: !(builtins.elem pkg config.ai-utils.excludePackages);
in
{
  options = {
    ai-utils = {
      enable = mkEnableOption "Enables all ai utilities";

      excludePackages = mkOption {
        description = "List of ai-utils packages to exclude from the default system";
        #type = with types; listOf package;
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
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
