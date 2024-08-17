{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.animations;
in
{
  options = {
    animations = {
      enable = mkEnableOption "Enables all animation apps";

      excludePackages = mkOption {
        description = "List of animations packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        blender
        synfigstudio
      ]
      ++ optionals stdenv.isLinux [ paraview ]
    );
  };
}
