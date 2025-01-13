{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.markdown-utils-cli;
in
{
  options = {
    markdown-utils-cli = {
      enable = lib.mkEnableOption "Enables all cli markdown utilities";

      excludePackages = lib.mkOption {
        description = "List of markdown-utils-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        inlyne
        mdcat
        md-tui
      ]
    );
  };
}
