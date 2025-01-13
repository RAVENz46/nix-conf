{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.music-productions;
in
{
  options = {
    music-productions = {
      enable = lib.mkEnableOption "Enables all DAWs and plugins";

      excludePackages = lib.mkOption {
        description = "List of music-productions packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [ zrythm ]
      ++ optionals stdenv.isLinux [
        ardour
        lsp-plugins
        muse
        qtractor
      ]
      ++ optionals (stdenv.system == "x86_64-linux") [
        lmms
        yabridge
      ]
    );
  };
}
