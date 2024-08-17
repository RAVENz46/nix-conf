{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.image-editors;
in
{
  options = {
    image-editors = {
      enable = mkEnableOption "Enables all image-editor apps";

      excludePackages = mkOption {
        description = "List of image-editors packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        darktable
        gimp-with-plugins
        oculante
        simp
        rawtherapee
      ]
      ++ optionals stdenv.isLinux [ digikam ]
    );
  };
}
