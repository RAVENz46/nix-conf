{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.resource-monitors-gui;
in
{
  options = {
    resource-monitors-gui = {
      enable = mkEnableOption "Enables all gui resource monitors";

      excludePackages = mkOption {
        description = "List of resource-monitors-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        bustle
        process-viewer
        rustscan
      ]
      ++ optionals stdenv.isLinux [
        mission-center
        resources
      ]
    );
  };
}
