{
  config,
  lib,
  pkgs,
  ...
}:

{
  boot = {
    #kernelPackages = pkgs.linuxPackages_latest;
    kernelPackages = pkgs.linuxPackages_6_11_hardened;
    kernelParams = [ "intel_iommu=on" ];
    supportedFilesystems = [
      "bcachefs"
      "exfat"
    ];
    loader.systemd-boot.enable = lib.mkForce false;
    lanzaboote = {
      enable = true;
      pkiBundle = "/etc/secureboot";
    };
  };

  environment = {
    memoryAllocator.provider = lib.mkForce "libc";
  };

  hardware.enableRedistributableFirmware = true;

  security = {
    unprivilegedUsernsClone = true;
  };

  services.kanata.keyboards.vimacs.devices = [
    "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
  ];
}
