{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.csv-utils-cli;
in
{
  options = {
    csv-utils-cli = {
      enable = mkEnableOption "Enables all cli csv utils";

      excludePackages = mkOption {
        description = "List of csv-utils-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        csview
        csvlens
        tidy-viewer
        qsv
      ]
    );
  };
}
