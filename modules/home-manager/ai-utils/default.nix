{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.ai-utils;
  inherit (config.nur.repos.dustinblackman) oatmeal;
in
{
  options = {
    ai-utils = {
      enable = mkEnableOption "Enables all ai utilities";

      excludePackages = mkOption {
        description = "List of ai-utils packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        aichat
        oatmeal
      ]
    );
  };
}
