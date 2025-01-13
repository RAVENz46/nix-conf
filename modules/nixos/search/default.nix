{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.search;
  notExcluded = pkg: !(builtins.elem pkg config.search.excludePackages);
in
{
  options = {
    search = {
      enable = lib.mkEnableOption "Enables all search";

      excludePackages = lib.mkOption {
        description = "List of search packages to exclude from the default system";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
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
