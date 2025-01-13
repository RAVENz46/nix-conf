{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.git-utils-gui;
in
{
  options = {
    git-utils-gui = {
      enable = lib.mkEnableOption "Enables all gui git utilities";

      excludePackages = lib.mkOption {
        description = "List of git-utils-gui packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs; optionals stdenv.isLinux [ github-desktop ]
    );
  };
}
