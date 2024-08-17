{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.painters;
in
{
  options = {
    painters = {
      enable = mkEnableOption "Enables all painter apps";

      excludePackages = mkOption {
        description = "List of painters packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        inkscape-with-extensions
        rnote
      ]
      ++ optionals stdenv.isLinux [
        krita
        mypaint
      ]
    );
  };
}
