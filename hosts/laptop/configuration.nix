{
  config,
  lib,
  pkgs,
  ...
}:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [ "intel_iommu=on" ];
    supportedFilesystems = [ "bcachefs" ];
    loader.systemd-boot.enable = lib.mkForce false;
    lanzaboote = {
      enable = true;
      pkiBundle = "/etc/secureboot";
    };
  };

  systemd.services."prepare-kexec".wantedBy = [ "multi-user.target" ];

  environment = {
    memoryAllocator.provider = lib.mkForce "libc";
  };

  hardware.enableRedistributableFirmware = true;

  services.kanata.keyboards.vimacs.devices = [
    "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
  ];
}
