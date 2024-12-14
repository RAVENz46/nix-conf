{
  config,
  lib,
  pkgs,
  ...
}:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_6_11_hardened;
    supportedFilesystems = [
      "bcachefs"
      "exfat"
    ];
    lanzaboote = {
      enable = true;
      pkiBundle = "/etc/secureboot";
    };
    loader = {
      systemd-boot.enable = lib.mkForce false;
    };
  };

  environment = {
    memoryAllocator.provider = lib.mkForce "libc";
  };

  hardware = {
    enableRedistributableFirmware = true;
    graphics = {
      extraPackages = with pkgs; [ vpl-gpu-rt ];
      extraPackages32 = with pkgs; [ vpl-gpu-rt ];
    };
  };

  security = {
    unprivilegedUsernsClone = true;
  };

  services.kanata.keyboards.vimacs.devices = [
    "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
  ];
}
