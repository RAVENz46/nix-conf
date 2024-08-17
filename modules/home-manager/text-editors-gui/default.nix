{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

with lib;
let
  cfg = config.text-editors-gui;
in
{
  options = {
    text-editors-gui = {
      enable = mkEnableOption "Enables all gui text-editors";

      excludePackages = mkOption {
        description = "List of text-editors-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        lapce
        zed-editor
      ]
      ++ optionals stdenv.isLinux [ cosmic-edit ]
      ++ optionals (stdenv.system == "x86_64-linux") [ inputs.lem.packages.${system}.lem-sdl2 ]
    );
  };
}
