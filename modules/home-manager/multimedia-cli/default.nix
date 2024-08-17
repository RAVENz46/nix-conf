{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

with lib;
let
  cfg = config.multimedia-cli;
  notExcluded = pkg: !(builtins.elem pkg config.multimedia-cli.excludePackages);
in
{
  options = {
    multimedia-cli = {
      enable = mkEnableOption "Enables all cli multimedia apps";

      excludePackages = mkOption {
        description = "List of multimedia-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        ani-cli
        inputs.lobster.packages.${system}.default
        mpv
        rustplayer
        termusic
        twitch-tui
        yaydl
        ytermusic
      ]
      ++ optionals stdenv.isLinux [
        scope-tui
        tplay
      ]
    );

    programs.jerry = {
      enable = notExcluded inputs.jerry.packages.${pkgs.system}.default;
      config = {
        player = "mpv";
        #provider = "";
      };
    };
  };
}
