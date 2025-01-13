{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.messaging-cli;
  notExcluded = pkg: !(builtins.elem pkg config.messaging-cli.excludePackages);
in
{
  options = {
    messaging-cli = {
      enable = lib.mkEnableOption "Enables all cli messaging apps";

      excludePackages = lib.mkOption {
        description = "List of messaging-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        gurk-rs
        halloy
        iamb
      ]
    );

    accounts.email.accounts.user.himalaya.enable = notExcluded pkgs.himalaya;

    programs = {
      himalaya = {
        enable = notExcluded pkgs.himalaya;
        settings = { };
      };
      tiny = {
        enable = notExcluded pkgs.tiny;
        settings = { };
      };
    };

    services = {
      himalaya-watch = {
        enable = notExcluded pkgs.himalaya;
        environment = { };
        settings = {
          account = "";
        };
      };
    };
  };
}
