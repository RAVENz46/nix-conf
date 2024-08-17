{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.markdown-utils-cli;
in
{
  options = {
    markdown-utils-cli = {
      enable = mkEnableOption "Enables all cli markdown utilities";

      excludePackages = mkOption {
        description = "List of markdown-utils-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        inlyne
        mdcat
        md-tui
      ]
    );
  };
}
