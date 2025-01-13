{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.resource-monitors-gui;
in
{
  options = {
    resource-monitors-gui = {
      enable = lib.mkEnableOption "Enables all gui resource monitors";

      excludePackages = lib.mkOption {
        description = "List of resource-monitors-gui packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
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
