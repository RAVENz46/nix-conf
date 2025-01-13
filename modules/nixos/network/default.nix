{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.network;
  notExcluded = pkg: !(builtins.elem pkg config.network.excludePackages);
in
{
  options = {
    network = {
      enable = lib.mkEnableOption "Enables network";

      excludePackages = lib.mkOption {
        description = "List of network packages to exclude from the default system";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = lib.subtractLists cfg.excludePackages (with pkgs; [ rosenpass-tools ]);

    users.users = lib.genAttrs config.userList (f: {
      extraGroups = [ "networkmanager" ];
    });

    networking = {
      firewall = {
        trustedInterfaces = lib.mkIf (notExcluded pkgs.tailscale) [ "tailscale0" ];
      };
      networkmanager = {
        enable = true;
      };
    };

    programs = {
      bandwhich = {
        enable = notExcluded pkgs.bandwhich;
      };

      sniffnet = {
        enable = notExcluded pkgs.sniffnet;
      };

      trippy = {
        enable = notExcluded pkgs.trippy;
      };
    };

    services = {
      rosenpass = {
        enable = notExcluded pkgs.rosenpass;
      };

      tailscale = {
        enable = notExcluded pkgs.tailscale;
        openFirewall = true;
      };

      hickory-dns = {
        enable = notExcluded pkgs.hickory-dns;
      };

      wstunnel = {
        enable = notExcluded pkgs.wstunnel;
      };
    };
  };
}
