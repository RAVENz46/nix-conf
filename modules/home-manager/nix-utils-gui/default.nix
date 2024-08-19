{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

with lib;
let
  cfg = config.nix-utils-gui;
in
{
  options = {
    nix-utils-gui = {
      enable = mkEnableOption "Enables all gui nix utilities";

      excludePackages = mkOption {
        description = "List of nix-utils-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [ inputs.nix-software-center.packages.${system}.default ]
      ++ optionals config.isNixOS [ inputs.nixos-conf-editor.packages.${system}.default ]
    );
  };
}
