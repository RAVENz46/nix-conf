{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.search;
  notExcluded = pkg: !(builtins.elem pkg config.search.excludePackages);
in
{
  options = {
    search = {
      enable = mkEnableOption "Enables all search";

      excludePackages = mkOption {
        description = "List of search packages to exclude from the default system";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    services = {
      meilisearch = {
        enable = notExcluded pkgs.meilisearch;
      };

      qdrant = {
        enable = notExcluded pkgs.qdrant;
      };

      quickwit = {
        enable = notExcluded pkgs.quickwit;
      };

      sonic-server = {
        enable = notExcluded pkgs.sonic-server;
      };
    };
  };
}
