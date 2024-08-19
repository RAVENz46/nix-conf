{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.virtualization;
  notExcluded = pkg: !(builtins.elem pkg config.virtualization.excludePackages);
in
{
  options = {
    virtualization = {
      hypervisor = mkOption {
        type = types.str;
        description = "Enable kvm or xen";
      };

      container = {
        enable = mkEnableOption "Enable linux container";
      };

      excludePackages = mkOption {
        description = "List of virtualization packages to exclude from the default system";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkMerge [
    (mkIf (cfg.hypervisor != "") {
      users.users = genAttrs config.userList (f: {
        extraGroups = [ "libvirtd" ];
      });
      virtualisation = {
        libvirtd = {
          enable = true;
          allowedBridges = [ "virbr0" ];
          qemu = {
            swtpm.enable = notExcluded pkgs.swtpm;
            ovmf = {
              packages = with pkgs; [
                (OVMF.override {
                  secureBoot = true;
                  tpmSupport = true;
                }).fd
              ];
            };
          };
        };
        #spiceUSBRedirection.enable = true;

        # Use in declarative vm
        #tpm.enable = true;
        #useSecureBoot = true;
        #useBootLoader = true;
        #useEFIBoot = true;
      };
      # Required for macos vm
      boot.extraModprobeConfig = "
        options kvm_intel nested=1
        options kvm_intel emulate_invalid_guest_state=0
        options kvm ignore_msrs=1
      ";
    })

    (mkIf (cfg.hypervisor != "" || cfg.container.enable) {
      programs.virt-manager.enable = notExcluded pkgs.virt-manager;
    })

    (mkIf (cfg.hypervisor == "kvm") {
      environment.systemPackages = subtractLists cfg.excludePackages (
        with pkgs;
        [
          cloud-hypervisor
          crosvm
          firecracker
          gnome.gnome-boxes
          krun
          krunvm
          quickemu
          stratovirt
        ]
        ++ optionals stdenv.isx86_64 [ quickgui ]
      );
    })

    (mkIf (cfg.hypervisor == "xen") {
      virtualisation = {
        xen = {
          enable = pkgs.stdenv.isx86_64;
        };
      };
    })

    (mkIf cfg.container.enable {
      environment.systemPackages = subtractLists cfg.excludePackages (
        with pkgs;
        [
          cntr
          conmon-rs
          distrobuilder
        ]
      );

      programs = {
        extra-container.enable = notExcluded pkgs.extra-container;
      };

      virtualisation = {
        incus = {
          enable = notExcluded pkgs.incus;
          ui.enable = true;
        };

        lxc = {
          enable = notExcluded pkgs.lxc;
        };
      };
    })
  ];
}
