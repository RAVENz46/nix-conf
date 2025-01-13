{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.hex-utils-cli;
in
{
  options = {
    hex-utils-cli = {
      enable = lib.mkEnableOption "Enables all cli hex utilities";

      excludePackages = lib.mkOption {
        description = "List of hex-utils-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        biodiff
        heh
        hexyl
      ]
    );
  };
}
