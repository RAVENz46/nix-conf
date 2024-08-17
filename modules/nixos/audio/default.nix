{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.audio;
in
{
  options = {
    audio = {
      enable = mkEnableOption "Enables audio";
    };
  };

  config = mkIf cfg.enable {
    users.users = genAttrs config.userList (f: {
      extraGroups = [ "audio" ];
    });

    services = {
      pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        jack.enable = true;
        pulse.enable = true;
        wireplumber.enable = true;

        lowLatency = {
          enable = pkgs.stdenv.isx86_64;
          quantum = 64;
          rate = 192000;
        };
      };
    };

    musnix = {
      enable = pkgs.stdenv.isx86_64;
      soundcardPciId = "00:1f.03";
    };
  };
}
