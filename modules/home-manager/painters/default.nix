{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.painters;
in
{
  options = {
    painters = {
      enable = lib.mkEnableOption "Enables all painter apps";

      excludePackages = lib.mkOption {
        description = "List of painters packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
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
