{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.security;
  notExcluded = pkg: !(builtins.elem pkg config.security.excludePackages);
in
{
  options = {
    security = {
      enable = mkEnableOption "Enables hardened settings";

      excludePackages = mkOption {
        description = "List of security packages to exclude from the default system";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    documentation = {
      enable = false;
      doc.enable = false;
      man.enable = false;
      dev.enable = false;
      nixos.enable = false;
      info.enable = false;
    };

    security = {
      apparmor = {
        policies = {
          "sudo-rs" = {
            enforce = false;
            enable = false;
            profile = ''
              ${pkgs.sudo-rs}/bin/sudo {
                file /** rwlkUx,
              }
            '';
          };
        };
      };
      #please = {
      #  enable = notExcluded pkgs.please;
      #};
      sudo.enable = false;
      sudo-rs = {
        enable = true;
        execWheelOnly = true;
      };
      tpm2 = {
        enable = true;
        abrmd.enable = true;
        pkcs11.enable = true;
        tctiEnvironment.enable = true;
      };
    };
    users.users = genAttrs config.userList (f: {
      extraGroups = [
        "tss"
        "wheel"
      ];
    });
    environment = {
      defaultPackages = [ ];
      memoryAllocator.provider = "graphene-hardened";
      systemPackages = subtractLists cfg.excludePackages (
        with pkgs;
        [
          apparmor-kernel-patches
          #policycoreutils
        ]
      );
    };
    services = {
      #clamav = {
      #  daemon.enable = true;
      #  fangfrisch.enable = true;
      #  #scanner.enable = true;
      #  updater.enable = true;
      #};
      dbus.apparmor = "enabled";
      kanidm.enablePam = notExcluded pkgs.kanidm;
    };
    systemd = {
      package = pkgs.systemd.override { withSelinux = true; };
      coredump.enable = false;
    };
    boot = {
      extraModulePackages = with config.boot.kernelPackages; [ lkrg ];
      #kernelParams = [ "security=selinux" ];
      #kernelPatches = [
      #  {
      #    name = "SELinux";
      #    patch = null;
      #    extraStructuredConfig = with kernel; {
      #      DEFAULT_SECURITY_SELINUX = no;
      #      SECURITY_SELINUX = yes;
      #      SECURITY_SELINUX_AVC_STATS = yes;
      #      SECURITY_SELINUX_BOOTPARAM = no;
      #      SECURITY_SELINUX_CHECKREQPROT_VALUE = freeform "0";
      #      SECURITY_SELINUX_DEVELOP = yes;
      #      SECURITY_SELINUX_DISABLE = no;
      #    };
      #  }
      #];
    };
  };
}
