{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

let
  cfg = config.multimedia-cli;
  notExcluded = pkg: !(builtins.elem pkg config.multimedia-cli.excludePackages);
in
{
  options = {
    multimedia-cli = {
      enable = lib.mkEnableOption "Enables all cli multimedia apps";

      excludePackages = lib.mkOption {
        description = "List of multimedia-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
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
      ++ lib.optionals stdenv.isLinux [
        scope-tui
        tplay
      ]
    );

    programs = {
      jerry = {
        enable = notExcluded inputs.jerry.packages.${pkgs.system}.default;
        config = {
          player = "mpv";
          #provider = "";
        };
      };
    };
  };
}
