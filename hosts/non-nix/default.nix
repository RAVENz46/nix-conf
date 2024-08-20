{
  config,
  lib,
  pkgs,
  ...
}:

{
  config = {
    nixpkgs.hostPlatform = "x86_64-linux";

    system-manager.allowAnyDistro = true;

    environment = {
      etc = {
      };

      systemPackages = with pkgs; [
      ];
    };

    systemd.services = {
    };
  };
}
