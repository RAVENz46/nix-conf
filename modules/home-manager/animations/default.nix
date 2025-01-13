{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.animations;
in
{
  options = {
    animations = {
      enable = lib.mkEnableOption "Enables all animation apps";

      excludePackages = lib.mkOption {
        description = "List of animations packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        blender
        synfigstudio
      ]
      ++ lib.optionals stdenv.isLinux [ paraview ]
    );
  };
}
