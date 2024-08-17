{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.resource-monitors-cli;
  notExcluded = pkg: !(builtins.elem pkg config.resource-monitors-cli.excludePackages);
in
{
  options = {
    resource-monitors-cli = {
      enable = mkEnableOption "Enables all cli resource monitors";

      excludePackages = mkOption {
        description = "List of resource-monitors-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        netscanner
        openobserve
        sniffglue
        websocat
        zenith
        zenith-nvidia
      ]
      ++ optionals stdenv.isLinux [
        havn
        kmon
      ]
    );

    programs = {
      bottom = {
        enable = notExcluded pkgs.bottom;
        settings = {
          flags = {
            rate = "500";
          };
        };
      };
    };
  };
}
