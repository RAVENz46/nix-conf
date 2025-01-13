{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.messaging-gui;
  notExcluded = pkg: !(builtins.elem pkg config.messaging-gui.excludePackages);
in
{
  options = {
    messaging-gui = {
      enable = lib.mkEnableOption "Enables all gui messaging apps";

      excludePackages = lib.mkOption {
        description = "List of messaging-gui packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [ protonmail-bridge-gui ]
      ++ optionals stdenv.isLinux [
        flare-signal
        fractal
      ]
    );

    programs = {
      thunderbird = {
        enable = notExcluded pkgs.thunderbird;
        profiles = { };
      };
    };
  };
}
