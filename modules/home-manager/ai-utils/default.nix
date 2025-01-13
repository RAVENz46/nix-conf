{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.ai-utils;
  inherit (config.nur.repos.dustinblackman) oatmeal;
in
{
  options = {
    ai-utils = {
      enable = lib.mkEnableOption "Enables all ai utilities";

      excludePackages = lib.mkOption {
        description = "List of ai-utils packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        aichat
        oatmeal
      ]
    );
  };
}
