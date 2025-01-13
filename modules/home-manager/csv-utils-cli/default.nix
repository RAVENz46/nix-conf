{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.csv-utils-cli;
in
{
  options = {
    csv-utils-cli = {
      enable = lib.mkEnableOption "Enables all cli csv utils";

      excludePackages = lib.mkOption {
        description = "List of csv-utils-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
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
