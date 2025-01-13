{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.browsers-cli;
in
{
  options = {
    browsers-cli = {
      enable = lib.mkEnableOption "Enables all cli browsers";

      excludePackages = lib.mkOption {
        description = "List of browsers-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
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
