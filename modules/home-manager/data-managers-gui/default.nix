{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.data-managers-gui;
in
{
  options = {
    data-managers-gui = {
      enable = lib.mkEnableOption "Enables all gui data-managers";

      excludePackages = lib.mkOption {
        description = "List of data-managers-gui packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        celeste
        czkawka-full
        fm
        szyszka
        warp
      ]
      ++ lib.optionals stdenv.isLinux [
        pika-backup
      ]
    );
  };
}
