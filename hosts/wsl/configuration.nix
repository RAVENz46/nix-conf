{
  lib,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    inputs.nixos-wsl.nixosModules.default
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

  security = {
    tpm2 = {
      enable = lib.mkForce false;
      abrmd.enable = lib.mkForce false;
      pkcs11.enable = lib.mkForce false;
      tctiEnvironment.enable = lib.mkForce false;
    };
  };

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
