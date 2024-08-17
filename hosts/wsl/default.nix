{
  config,
  lib,
  pkgs,
  inputs,
  outputs,
  ...
}:

{
  imports = [
    ./nh.nix

    inputs.catppuccin.nixosModules.catppuccin
    inputs.nur.nixosModules.nur
    inputs.home-manager.nixosModules.home-manager
    inputs.nixos-wsl.nixosModules
  ] ++ (builtins.attrValues outputs.nixosModules);

  wsl = {
    enable = true;
    defaultUser = "user";
    docker-desktop.enable = false;
    startMenuLaunchers = true;
    usbip = {
      enable = true;
      autoAttach = [ ];
    };
    useWindowsDriver = true;
  };

  users.users = lib.genAttrs config.userList (f: {
    shell = pkgs.fish;
  });

  networking.hostName = "wsl";

  environment.shells = with pkgs; [
    bash
    fish
    nushell
  ];

  programs.bash = {
    interactiveShellInit = ''
      set -o vi
    '';
    blesh.enable = true;
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      fish_vi_key_bindings
    '';
  };

  environment = {
    defaultPackages = lib.mkForce [ ];
    systemPackages = with pkgs; [
      wslu
      wsl-open
      wsl-vpnkit
      nushell
    ];
  };

  security = {
    sudo.enable = false;
    sudo-rs = {
      enable = true;
      execWheelOnly = true;
    };
  };

  nixpkgs.overlays = builtins.attrValues outputs.overlays;

  nix = {
    package = pkgs.nixFlakes;
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
        "repl-flake"
      ];
      auto-optimise-store = true;
    };
    registry = lib.mapAttrs (_: value: { flake = value; }) inputs;
    nixPath = [ "nixpkgs=${inputs.nixpkgs.outPath}" ];
  };

  documentation = {
    enable = false;
    doc.enable = false;
    man.enable = false;
    dev.enable = false;
    nixos.enable = false;
    info.enable = false;
  };

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "teal";
  };

  fonts = {
    packages = with pkgs; [ nerdfonts ];
  };

  programs.nh = {
    enable = true;
    flake = /home/${config.wsl.defaultUser}/nix;
  };

  home-manager = {
    extraSpecialArgs = {
      inherit inputs outputs;
    };
    useGlobalPkgs = true;
    useUserPackages = true;
    users.user = import ./home.nix;
  };
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  system.stateVersion = "24.05";
}
