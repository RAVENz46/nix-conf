{
  config,
  lib,
  pkgs,
  inputs,
  outputs,
  ...
}:

{
  environment.packages = with pkgs; [
    nvim
    #diffutils
    #findutils
    #utillinux
    #tzdata
    #hostname
    #man
    #gnugrep
    #gnupg
    #gnused
    #gnutar
    #bzip2
    #gzip
    #xz
    #zip
    #unzip
  ];

  environment.etcBackupExtension = ".bak";

  system.stateVersion = "24.11";

  nix = {
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
    registry = lib.mapAttrs (_: value: { flake = value; }) inputs;
    nixPath = lib.mapAttrsToList (key: value: "${key}=${value.to.path}") config.nix.registry;
  };

  nixpkgs.overlays = [ inputs.nix-on-droid.overlays.default ];

  home-manager = {
    extraSpecialArgs = {
      inherit inputs outputs;
    };
    backupFileExtension = "hm-bak";
    useGlobalPkgs = true;
    useUserPackages = true;
    config = ./home.nix;
  };

  nixpkgs.hostPlatform = "aarch64-linux";
}
