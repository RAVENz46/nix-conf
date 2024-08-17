{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.hex-utils-cli;
in
{
  options = {
    hex-utils-cli = {
      enable = mkEnableOption "Enables all cli hex utilities";

      excludePackages = mkOption {
        description = "List of hex-utils-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        biodiff
        heh
        hexyl
      ]
    );
  };
}
