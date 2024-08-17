{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.messaging-gui;
  notExcluded = pkg: !(builtins.elem pkg config.messaging-gui.excludePackages);
in
{
  options = {
    messaging-gui = {
      enable = mkEnableOption "Enables all gui messaging apps";

      excludePackages = mkOption {
        description = "List of messaging-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [ protonmail-bridge-gui ]
      ++ optionals stdenv.isLinux [
        flare-signal
        fractal
      ]
    );

    programs = {
      thunderbird = {
        enable = notExcluded pkgs.thunderbird && pkgs.stdenv.isLinux;
        profiles = { };
      };
    };
  };
}
