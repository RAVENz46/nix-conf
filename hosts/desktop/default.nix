{
  config,
  pkgs,
  lib,
  inputs,
  outputs,
  ...
}:

{
  networking.hostName = "desktop";
  userList = [ "ravenz46" ];

  ai-utils = {
    enable = false;
    excludePackages = with pkgs; [
      ollama
      tabby
    ];
  };
  audio.enable = true;
  desktop-managers = {
    compositors = [
      "cosmic"
      "niri"
    ];
    excludePackages = with pkgs; [ ];
  };
  localization.enable = true;
  misc = {
    enable = true;
    excludePackages = with pkgs; [
      android-tools
      conduwuit
      envision
      garage
      kanata
      lact
      matrix-conduit
      #mouse-actions
      rkvm
      rustdesk-server
    ];
  };
  network = {
    enable = true;
    excludePackages = with pkgs; [
      rosenpass
      rosenpass-tools
      tailscale
      hickory-dns
      wstunnel
    ];
  };
  nix-utils = {
    enable = true;
    excludePackages = with pkgs; [
      nix-ld-rs
      nixseparatedebuginfod
      nix-web
    ];
  };
  observability = {
    enable = false;
    excludePackages = with pkgs; [
      below
      vector
    ];
  };
  search = {
    enable = false;
    excludePackages = with pkgs; [
      meilisearch
      qdrant
      quickwit
      sonic-server
    ];
  };
  security = {
    enable = true;
    excludePackages = with pkgs; [ kanidm ];
  };
  shells.enable = true;
  virtualization = {
    hypervisor = "kvm";
    #container.enable = true;
    excludePackages = with pkgs; [
      cloud-hypervisor
      cntr
      conmon-rs
      crosvm
      firecracker
      #gnome-boxes
      quickgui
      stratovirt
    ];
  };

  nix = {
    nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];
    registry.nixpkgs.flake = inputs.nixpkgs;
    settings = {
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  nixpkgs.overlays = builtins.attrValues outputs.overlays;

  hardware.system76.power-daemon.enable = true;

  services = {
    clipcat.enable = true;
    system76-scheduler.enable = true;
    #fstrim.enable = true;
    #kanidm = {
    #  enableClient = true;
    #  enableServer = true;
    #};
    #rkvm = {
    #  server = {
    #    enable = true;
    #  };
    #  cliant = {
    #    enable = true;
    #  };
    #};
  };

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "green"; # red, pink, yellow, green, teal
  };

  nix-mineral = {
    enable = true;
    overrides = {
      desktop = {
        allow-unprivileged-userns = true;
        disable-usbguard = true;
        home-exec = true;
      };
      security = {
        minimize-swapping = true;
      };
    };
  };

  environment.systemPackages = with pkgs; [
    wl-clipboard-rs
    uutils-coreutils-noprefix
    (catppuccin-papirus-folders.override {
      inherit (config.catppuccin) flavor;
      inherit (config.catppuccin) accent;
    })
  ];

  users.users = lib.genAttrs config.userList (f: {
    isNormalUser = true;
    packages = with pkgs; [ ];
  });

  home-manager = {
    extraSpecialArgs = {
      inherit inputs outputs;
    };
    useGlobalPkgs = true;
    useUserPackages = true;
    users.ravenz46 = import ./home.nix;
  };

  system.stateVersion = "25.05";

  imports =
    [
      ./configuration.nix
      ./disk-config.nix
      ./hardware-configuration.nix
    ]
    ++ (with inputs; [
      "${nix-mineral}/nix-mineral.nix"
      catppuccin.nixosModules.catppuccin
      disko.nixosModules.default
      home-manager.nixosModules.default
      lanzaboote.nixosModules.lanzaboote
      musnix.nixosModules.default
      niri-flake.nixosModules.niri
      nix-gaming.nixosModules.pipewireLowLatency
      nix-gaming.nixosModules.platformOptimizations
      nix-index-database.nixosModules.nix-index
      nixos-cosmic.nixosModules.default
      #nixvim.nixosModules.default
      nur.modules.nixos.default
      nyx.nixosModules.default
    ])
    ++ (builtins.attrValues outputs.nixosModules);
}
