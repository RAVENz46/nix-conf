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
      extraPackages = with pkgs; [ intel-media-sdk ];
      extraPackages32 = with pkgs; [ intel-media-sdk ];
    };
    nvidia = {
      open = true;
      nvidiaSettings = true;
      modesetting.enable = true;
      package = config.boot.kernelPackages.nvidiaPackages.beta;
    };
  };

  services = {
    xserver.videoDrivers = [ "nvidia" ];
  };

  security = {
    unprivilegedUsernsClone = true;
  };

  programs.steam.platformOptimizations.enable = true;

  nix.settings = {
    substituters = [ "https://nix-gaming.cachix.org" ];
    trusted-public-keys = [ "nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4=" ];
  };

  nixpkgs = {
    config = {
      allowUnfreePredicate =
        pkg:
        builtins.elem (lib.getName pkg) [
          "nvidia-x11"
          "nvidia-settings"
        ];
    };
  };
}
