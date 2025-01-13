{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.image-editors;
in
{
  options = {
    image-editors = {
      enable = lib.mkEnableOption "Enables all image-editor apps";

      excludePackages = lib.mkOption {
        description = "List of image-editors packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        darktable
        gimp-with-plugins
        oculante
        simp
        rawtherapee
      ]
      ++ lib.optionals stdenv.isLinux [ digikam ]
    );
  };
}
