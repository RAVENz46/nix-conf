{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.video-editors;
in
{
  options = {
    video-editors = {
      enable = lib.mkEnableOption "Enables all video-editor apps";

      excludePackages = lib.mkOption {
        description = "List of video-editors packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        olive-editor
        openshot-qt
        shotcut
        vidmerger
      ]
      ++ lib.optionals stdenv.isLinux [
        flowblade
        identity
        kdePackages.kdenlive
        natron
        pitivi
        video-trimmer
      ]
      ++ lib.optionals (stdenv.system == "x86_64-linux") [ gyroflow ]
    );
  };
}
