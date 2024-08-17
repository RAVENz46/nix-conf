{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.music-productions;
in
{
  options = {
    music-productions = {
      enable = mkEnableOption "Enables all DAWs and plugins";

      excludePackages = mkOption {
        description = "List of music-productions packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
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
