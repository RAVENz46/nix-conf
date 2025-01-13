{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.misc-cli;
in
{
  options = {
    misc-cli = {
      enable = lib.mkEnableOption "Enables all gui miscellaneous";

      excludePackages = lib.mkOption {
        description = "List of misc-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
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
