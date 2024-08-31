{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

with lib;
let
  cfg = config.multimedia-gui;
  notExcluded = pkg: !(builtins.elem pkg config.multimedia-gui.excludePackages);
  inherit (inputs.pipeline.packages.${system}.default) pipeline;
in
{
  options = {
    multimedia-gui = {
      enable = mkEnableOption "Enables all gui multimedia apps";

      excludePackages = mkOption {
        description = "List of multimedia-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        fretboard
        gnome-podcasts
        loupe
        metronome
        pipeline
        snapshot
        switcheroo
      ]
      ++ optionals stdenv.isLinux [
        coppwr
        glide-media-player
        helvum
        kooha
        mousai
        neothesia
        pwvucontrol
        shortwave
        songrec
      ]
    );

    programs = {
      obs-studio = {
        enable = notExcluded pkgs.obs-studio && pkgs.stdenv.isLinux;
        plugins = with pkgs.obs-studio-plugins; [
          looking-glass-obs
          obs-backgroundremoval
          obs-mute-filter
          obs-pipewire-audio-capture
          obs-source-switcher
          obs-vkcapture
          waveform
        ];
      };
    };

    services = {
      amberol = {
        enable = notExcluded pkgs.amberol;
        replaygain = "off";
      };
    };

    xdg.configFile = mkIf config.programs.obs-studio.enable {
      "obs-studio/themes".source = ./obs-studio/themes;
    };
  };
}
