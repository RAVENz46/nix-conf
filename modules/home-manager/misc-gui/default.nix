{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.misc-gui;
in
{
  options = {
    misc-gui = {
      enable = lib.mkEnableOption "Enables all gui miscellaneous";

      excludePackages = lib.mkOption {
        description = "List of misc-gui packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        emblem
        icon-library
        newsflash
        qrtool
        ruffle
        symbolic-preview
      ]
      ++ optionals stdenv.isLinux [
        contrast
        eyedropper
        fragments
        gnome-decoder
        gnome-solanum
        impression
        overskride
        popsicle
        squeekboard
        tasks
        textpieces
      ]
    );
  };
}
