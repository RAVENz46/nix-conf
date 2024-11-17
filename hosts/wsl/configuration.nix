{
  lib,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    inputs.nixos-wsl.nixosModules
  ];

  wsl = {
    enable = true;
    defaultUser = "dagon";
    docker-desktop.enable = false;
    startMenuLaunchers = true;
    usbip = {
      enable = true;
      autoAttach = [ ];
    };
    useWindowsDriver = true;
  };

  environment = {
    defaultPackages = lib.mkForce [ ];
    systemPackages = with pkgs; [
      wslu
      wsl-open
      wsl-vpnkit
    ];
  };

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
