{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.terminals;
  notExcluded = pkg: !(builtins.elem pkg config.terminals.excludePackages);
in
{
  options = {
    terminals = {
      enable = lib.mkEnableOption "Enables all terminals";

      excludePackages = lib.mkOption {
        description = "List of terminals packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs; lib.optionals stdenv.isLinux [ cosmic-term ]
    );

    programs = {
      alacritty = {
        enable = notExcluded pkgs.alacritty;
      };

      rio = {
        enable = notExcluded pkgs.rio;
        settings = lib.importTOML ./rio.toml;
      };

      wezterm = {
        enable = notExcluded pkgs.wezterm;
        extraConfig = builtins.readFile ./wezterm.lua;
      };
    };
  };
}
