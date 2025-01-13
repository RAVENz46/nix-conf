{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.security;
  notExcluded = pkg: !(builtins.elem pkg config.security.excludePackages);
in
{
  options = {
    security = {
      enable = lib.mkEnableOption "Enables hardened settings";

      excludePackages = lib.mkOption {
        description = "List of security packages to exclude from the default system";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
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
    users.users = lib.genAttrs config.userList (f: {
      extraGroups = [
        "tss"
        "wheel"
      ];
    });
    environment = {
      defaultPackages = [ ];
      #memoryAllocator.provider = "graphene-hardened";
      systemPackages = lib.subtractLists cfg.excludePackages (
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
      timesyncd = {
        enable = false;
      };
      ntpd-rs = {
        enable = true;
      };
    };
    systemd = {
      #package = pkgs.systemd.override { withSelinux = true; };
    };
    boot = {
      extraModulePackages = with config.boot.kernelPackages; [ lkrg ];
      #kernelModules = [ "lkrg" ];
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
