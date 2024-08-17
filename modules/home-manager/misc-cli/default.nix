{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.misc-cli;
in
{
  options = {
    misc-cli = {
      enable = mkEnableOption "Enables all gui miscellaneous";

      excludePackages = mkOption {
        description = "List of misc-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        asciinema
        asciinema-agg
        crowbook
        gpg-tui
        httm
        hyperfine
        oha
        presenterm
        rqbit
        ruplacer
        russ
        sic-image-cli
        silicon
        speedtest-rs
        tickrs
        toipe
      ]
    );
  };
}
