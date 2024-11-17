{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.nix-utils;
  notExcluded = pkg: !(builtins.elem pkg config.nix-utils.excludePackages);
in
{
  options = {
    nix-utils = {
      enable = mkEnableOption "Enables all nix utilities";

      excludePackages = mkOption {
        description = "List of nix-utils packages to exclude from the default system";
        type = types.listOf types.package;
        default = [ ];
      };

    };
  };

  config = mkIf cfg.enable {
    environment.systemPackages = subtractLists cfg.excludePackages (with pkgs; [ nix-web ]);

    systemd.sockets.nix-web = mkIf (notExcluded pkgs.nix-web) {
      socketConfig.ListenStream = "[::1]:8649";
      wantedBy = [ "sockets.target" ];
    };

    programs = {
      nix-ld = {
        enable = notExcluded pkgs.nix-ld-rs;
        package = pkgs.nix-ld-rs;
        libraries = with pkgs; [ ];
      };
    };

    services = {
      nixseparatedebuginfod = {
        enable = notExcluded pkgs.nixseparatedebuginfod;
        #port = 1949;
      };
    };
  };
}
