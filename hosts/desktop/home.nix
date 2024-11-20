{
  pkgs,
  inputs,
  outputs,
  osConfig,
  ...
}:

{
  home = {
    username = "ravenz46";
    homeDirectory = "/home/ravenz46";
    stateVersion = "25.05";
  };
  programs = {
    home-manager.enable = true;
  };
  systemd.user.startServices = "sd-switch";
  isNixOS = true;
  catppuccin = {
    enable = true;
    inherit (osConfig.catppuccin) flavor;
    inherit (osConfig.catppuccin) accent;
  };

  ai-utils = {
    enable = false;
    excludePackages = with pkgs; [
      aichat
      oatmeal
    ];
  };
  android-utils = {
    enable = true;
    excludePackages = with pkgs; [
      scrcpy
      universal-android-debloater
    ];
  };
  animations = {
    enable = false;
    excludePackages = with pkgs; [
      paraview
      synfigstudio
      blender
    ];
  };
  browsers-gui = {
    enable = true;
    excludePackages = with pkgs; [
      arti
      ladybird
      nyxt
    ];
  };
  csv-utils-cli = {
    enable = false;
    excludePackages = with pkgs; [ ];
  };
  data-managers-cli = {
    enable = true;
    excludePackages = with pkgs; [
      conserve
      dua
      dust
      dysk
      fclones
      felix-fm
      projectable
      rustic
      rust-traverse
      termscp
    ];
  };
  data-managers-gui = {
    enable = true;
    excludePackages = with pkgs; [
      pika-backup
      warp
    ];
  };
  desktop-managers = {
    compositors = [
      "cosmic"
      #"niri"
    ];
    excludePackages = with pkgs; [ ];
  };
  git-utils-cli = {
    enable = true;
    excludePackages = with pkgs; [
      #delta
      git-absorb
      git-branchless
      #gitu
      #gitui
      gql
      jujutsu
      onefetch
    ];
  };
  git-utils-gui = {
    enable = true;
    excludePackages = with pkgs; [ github-desktop ];
  };
  hex-utils-cli = {
    enable = false;
    excludePackages = with pkgs; [
      heh
      hex
      hexdino
      hexyl
    ];
  };
  image-editors = {
    enable = true;
    excludePackages = with pkgs; [
      darktable
      digikam
      rawtherapee
    ];
  };
  json-utils-cli = {
    enable = false;
    excludePackages = with pkgs; [
      jless
      jql
    ];
  };
  log-utils-cli = {
    enable = false;
    excludePackages = with pkgs; [
      angle-grinder
      fblog
      tailspin
    ];
  };
  markdown-utils-cli = {
    enable = true;
    excludePackages = with pkgs; [ inlyne ];
  };
  messaging-cli = {
    enable = false;
    excludePackages = with pkgs; [
      gurk-rs
      halloy
      himalaya
      iamb
      tiny
    ];
  };
  messaging-gui = {
    enable = true;
    excludePackages = with pkgs; [
      flare-signal
      fractal
    ];
  };
  misc-cli = {
    enable = true;
    excludePackages = with pkgs; [
      asciinema
      asciinema-agg
      crowbook
      gpg-tui
      httm
      hyperfine
      oha
      presenterm
      rqbit
      russ
      sic-image-cli
      silicon
      tickrs
      toipe
    ];
  };
  misc-gui = {
    enable = true;
    excludePackages = with pkgs; [
      contrast
      emblem
      eyedropper
      fragments
      icon-library
      impression
      overskride
      popsicle
      qrtool
      ruffle
      squeekboard
      symbolic-preview
      tasks
      textpieces
    ];
  };
  multimedia-cli = {
    enable = true;
    excludePackages = with pkgs; [
      rustplayer
      termusic
      tplay
      twitch-tui
      yaydl
      ytermusic
    ];
  };
  multimedia-gui = {
    enable = true;
    excludePackages = with pkgs; [
      fretboard
      #glide-media-player
      gnome-podcasts
      mousai
      neothesia
      #inputs.pipeline.packages.${system}.default
      snapshot
      songrec
    ];
  };
  music-productions = {
    enable = false;
    excludePackages = with pkgs; [ ];
  };
  nix-utils-cli = {
    enable = true;
    excludePackages = with pkgs; [
      fh
      lorri
      nix-melt
    ];
  };
  nix-utils-gui = {
    enable = true;
    excludePackages = with pkgs; [ ];
  };
  office = {
    enable = true;
    excludePackages = with pkgs; [ ];
  };
  painters = {
    enable = false;
    excludePackages = with pkgs; [ ];
  };
  resource-monitors-cli = {
    enable = true;
    excludePackages = with pkgs; [
      havn
      kmon
      netscanner
      openobserve
      sniffglue
      websocat
      zenith
      #zenith-nvidia
    ];
  };
  resource-monitors-gui = {
    enable = true;
    excludePackages = with pkgs; [ process-viewer ];
  };
  security-utils-cli = {
    enable = true;
    excludePackages = with pkgs; [
      cotp
      feroxbuster
      fim-rs
      legba
      lynis
      noseyparker
      paper-age
      pdfrip
      ripsecrets
      sbomnix
    ];
  };
  security-utils-gui = {
    enable = true;
    excludePackages = with pkgs; [
      authenticator
      binocle
      gnome-obfuscate
    ];
  };
  shell-funs = {
    enable = true;
    excludePackages = with pkgs; [
      charasay
      terminal-typeracer
    ];
  };
  shell-utils = {
    enable = true;
    excludePackages = with pkgs; [
      ast-grep
      diffsitter
      hurl
      kalker
      lsd
      mcfly
      navi
      procs
      pueue
      shellharden
      systeroid
      tokei
      topgrade
      watchexec
      xh
      zellij
    ];
  };
  terminals = {
    enable = true;
    excludePackages = with pkgs; [ ];
  };
  text-editors-cli = {
    enable = true;
    excludePackages = with pkgs; [ amp ];
  };
  text-editors-gui = {
    enable = true;
    excludePackages = with pkgs; [ ];
  };
  video-editors = {
    enable = false;
    excludePackages = with pkgs; [ ];
  };

  imports =
    [ ./home-configuration.nix ]
    ++ (with inputs; [
      catppuccin.homeManagerModules.catppuccin
      ironbar.homeManagerModules.default
      jerry.homeManagerModules.default
      nix-index-database.hmModules.nix-index
      nixvim.homeManagerModules.default
      nur.hmModules.nur
      nyx.homeManagerModules.default
      plasma-manager.homeManagerModules.plasma-manager
    ])
    ++ (builtins.attrValues outputs.homeManagerModules);
}
