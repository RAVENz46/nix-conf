{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.json-utils-cli;
in
{
  options = {
    json-utils-cli = {
      enable = mkEnableOption "Enables all cli json utilities";

      excludePackages = mkOption {
        description = "List of json-utils-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        jless
        jql
      ]
    );
  };
}
