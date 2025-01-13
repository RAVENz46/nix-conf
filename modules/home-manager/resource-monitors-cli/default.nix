{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.resource-monitors-cli;
  notExcluded = pkg: !(builtins.elem pkg config.resource-monitors-cli.excludePackages);
in
{
  options = {
    resource-monitors-cli = {
      enable = lib.mkEnableOption "Enables all cli resource monitors";

      excludePackages = lib.mkOption {
        description = "List of resource-monitors-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
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
