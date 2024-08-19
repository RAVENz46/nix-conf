{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.network;
  notExcluded = pkg: !(builtins.elem pkg config.network.excludePackages);
in
{
  options = {
    network = {
      enable = mkEnableOption "Enables network";

      excludePackages = mkOption {
        description = "List of network packages to exclude from the default system";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    environment.systemPackages = subtractLists cfg.excludePackages (with pkgs; [ rosenpass-tools ]);

    users.users = genAttrs config.userList (f: {
      extraGroups = [ "networkmanager" ];
    });

    networking = {
      firewall = {
        enable = true;
        #allowedTCPPorts = [ ... ];
        #allowedUDPPorts = [ ... ];
        trustedInterfaces = mkIf (notExcluded pkgs.tailscale) [ "tailscale0" ];
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

      #hickory-dns = {
      #  enable = notExcluded pkgs.hickory-dns;
      #};

      wstunnel = {
        enable = notExcluded pkgs.wstunnel;
      };
    };
  };
}
