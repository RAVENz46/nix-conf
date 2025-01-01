{
  config,
  lib,
  pkgs,
  ...
}:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_6_12_hardened;
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
    #gnome.excludePackages = with pkgs; [
    #  baobab
    #  epiphany
    #  gnome-calculator
    #  gnome-calendar
    #  gnome-characters
    #  gnome-clocks
    #  gnome-console
    #  gnome-contacts
    #  gnome-font-viewer
    #  gnome-maps
    #  gnome-music
    #  gnome-system-monitor
    #  gnome-weather
    #  loupe
    #  nautilus
    #  gnome-connections
    #  simple-scan
    #  snapshot
    #  totem
    #  yelp
    #];
  };

  hardware = {
    enableRedistributableFirmware = true;
    graphics = {
      extraPackages = with pkgs; [ vpl-gpu-rt ];
      extraPackages32 = with pkgs; [ vpl-gpu-rt ];
    };
  };

  services.kanata.keyboards.vimacs.devices = [
    "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
  ];

  #services.power-profiles-daemon.enable = lib.mkForce false;
  #services.xserver = {
  #  desktopManager.gnome.enable = true;
  #};
}
