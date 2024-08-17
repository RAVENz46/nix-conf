{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.terminals;
  notExcluded = pkg: !(builtins.elem pkg config.terminals.excludePackages);
in
{
  options = {
    terminals = {
      enable = mkEnableOption "Enables all terminals";

      excludePackages = mkOption {
        description = "List of terminals packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs; optionals stdenv.isLinux [ cosmic-term ]
    );

    programs = {
      alacritty = {
        enable = notExcluded pkgs.alacritty;
      };

      rio = {
        enable = notExcluded pkgs.rio;
        settings = importTOML ./rio.toml;
      };

      wezterm = {
        enable = notExcluded pkgs.wezterm;
        extraConfig = builtins.readFile ./wezterm.lua;
      };
    };
  };
}
