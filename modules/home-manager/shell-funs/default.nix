{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

let
  cfg = config.shell-funs;
in
{
  options = {
    shell-funs = {
      enable = lib.mkEnableOption "Enables all shell funs";

      excludePackages = lib.mkOption {
        description = "List of shell-funs packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        charasay
        chess-tui
        cmd-wrapped
        dvd-term
        dwt1-shell-color-scripts
        firework-rs
        #inputs.fortune-kind.packages.${system}.default
        genact
        globe-cli
        krabby
        macchina
        minesweep-rs
        pfetch-rs
        pipes-rs
        rusty-rain
        terminaltexteffects
        terminal-typeracer
        ttyper
      ]
    );
  };
}
