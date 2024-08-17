{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.data-managers-gui;
in
{
  options = {
    data-managers-gui = {
      enable = mkEnableOption "Enables all gui data-managers";

      excludePackages = mkOption {
        description = "List of data-managers-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        celeste
        czkawka
        fm
        szyszka
        warp
      ]
      ++ optionals stdenv.isLinux [
        cosmic-files
        pika-backup
      ]
    );
  };
}
