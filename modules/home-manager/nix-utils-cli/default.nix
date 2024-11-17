{
  config,
  pkgs,
  lib,
  ...
}:

with lib;
let
  cfg = config.nix-utils-cli;
  notExcluded = pkg: !(builtins.elem pkg config.nix-utils-cli.excludePackages);
in
{
  options = {
    nix-utils-cli = {
      enable = mkEnableOption "Enables all nix cli utilities";

      excludePackages = mkOption {
        description = "List of nix-utils-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        devenv
        fh
        flake-checker
        nix-doc
        nix-init
        nix-melt
        nixpkgs-hammering
        nixpkgs-lint-community
        nurl
      ]
    );

    programs = {
      direnv = {
        enable = notExcluded pkgs.direnv;
        #silent = true;
        config = { };
        #stdlib = ''
        #'';
        nix-direnv.enable = notExcluded pkgs.nix-direnv && config.programs.direnv.enable;
      };

      nh = {
        enable = notExcluded pkgs.nh;
      };

      nix-index.enable = notExcluded pkgs.nix-index && !config.programs.command-not-found.enable;
      nix-index-database.comma.enable = notExcluded pkgs.comma && config.programs.nix-index.enable;
    };

    services = {
      lorri = {
        enable = notExcluded pkgs.lorri;
      };
    };
  };
}
