{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.browsers-cli;
in
{
  options = {
    browsers-cli = {
      enable = mkEnableOption "Enables all cli browsers";

      excludePackages = mkOption {
        description = "List of browsers-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        leetcode-cli
        monolith
        wiki-tui
      ]
      ++ optionals stdenv.isLinux [ ncgopher ]
    );
  };
}
