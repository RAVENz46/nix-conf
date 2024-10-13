{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

with lib;
let
  cfg = config.shell-funs;
in
{
  options = {
    shell-funs = {
      enable = mkEnableOption "Enables all shell funs";

      excludePackages = mkOption {
        description = "List of shell-funs packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
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
