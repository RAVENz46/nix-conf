{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.misc-gui;
in
{
  options = {
    misc-gui = {
      enable = mkEnableOption "Enables all gui miscellaneous";

      excludePackages = mkOption {
        description = "List of misc-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
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
        cosmic-tasks
        eyedropper
        fragments
        gnome-decoder
        gnome-solanum
        impression
        overskride
        popsicle
        squeekboard
        textpieces
      ]
    );
  };
}
