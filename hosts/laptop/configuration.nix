{
  config,
  lib,
  pkgs,
  ...
}:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_6_11_hardened;
    plymouth = {
      enable = true;
      catppuccin.enable = false;
      theme = "circuit";
      themePackages = with pkgs; [
        (adi1090x-plymouth-themes.override {
          selected_themes = [ "circuit" ];
        })
      ];
    };
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

  hardware.enableRedistributableFirmware = true;

  security = {
    unprivilegedUsernsClone = true;
  };

  services.kanata.keyboards.vimacs.devices = [
    "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
  ];
}
