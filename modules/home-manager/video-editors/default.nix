{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.video-editors;
in
{
  options = {
    video-editors = {
      enable = mkEnableOption "Enables all video-editor apps";

      excludePackages = mkOption {
        description = "List of video-editors packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        olive-editor
        openshot-qt
        shotcut
        vidmerger
      ]
      ++ optionals stdenv.isLinux [
        flowblade
        identity
        kdePackages.kdenlive
        natron
        pitivi
        video-trimmer
      ]
      ++ optionals (stdenv.system == "x86_64-linux") [ gyroflow ]
    );
  };
}
