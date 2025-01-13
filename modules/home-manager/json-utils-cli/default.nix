{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.json-utils-cli;
in
{
  options = {
    json-utils-cli = {
      enable = lib.mkEnableOption "Enables all cli json utilities";

      excludePackages = lib.mkOption {
        description = "List of json-utils-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        jless
        jql
      ]
    );
  };
}
