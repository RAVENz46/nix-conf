{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.git-utils-gui;
in
{
  options = {
    git-utils-gui = {
      enable = mkEnableOption "Enables all gui git utilities";

      excludePackages = mkOption {
        description = "List of git-utils-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs; optionals stdenv.isLinux [ github-desktop ]
    );
  };
}
