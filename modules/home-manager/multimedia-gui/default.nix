{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.multimedia-gui;
  notExcluded = pkg: !(builtins.elem pkg config.multimedia-gui.excludePackages);
in
{
  options = {
    multimedia-gui = {
      enable = lib.mkEnableOption "Enables all gui multimedia apps";

      excludePackages = lib.mkOption {
        description = "List of multimedia-gui packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
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
          obs-color-monitor
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
  };
}
