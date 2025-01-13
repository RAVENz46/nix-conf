{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

let
  cfg = config.nix-utils-gui;
in
{
  options = {
    nix-utils-gui = {
      enable = lib.mkEnableOption "Enables all gui nix utilities";

      excludePackages = lib.mkOption {
        description = "List of nix-utils-gui packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [ inputs.nix-software-center.packages.${system}.default ]
      ++ lib.optionals config.isNixOS [ inputs.nixos-conf-editor.packages.${system}.default ]
    );
  };
}
