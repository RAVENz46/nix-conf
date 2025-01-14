{
  config,
  pkgs,
  lib,
  inputs,
  outputs,
  osConfig,
  ...
}:

{
  home = {
    username = "";
    homeDirectory = "/home/";
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
  isNixOS = false;
  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "teal";
  };

  ai-utils = {
    enable = false;
    excludePackages = with pkgs; [
      aichat
      oatmeal
    ];
  };
  android-utils = {
    enable = false;
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
  browsers-cli = {
    enable = false;
    excludePackages = with pkgs; [
      leetcode-cli
      monolith
      ncgopher
      wiki-tui
    ];
  };
  browsers-gui = {
    enable = false;
    excludePackages = with pkgs; [
      arti
      browdi
      browsers
      firefox-devedition
      floorp
      geopard
      ladybird
      librewolf
      mullvad-browser
      ungoogled-chromium
    ];
  };
  csv-utils-cli = {
    enable = false;
    excludePackages = with pkgs; [
      csview
      csvlens
      qsv
      tidy-viewer
    ];
  };
  data-managers-cli = {
    enable = false;
    excludePackages = with pkgs; [
      broot
      conserve
      dua
      dust
      dysk
      fclones
      felix-fm
      joshuto
      rustic
      tere
      termscp
      xplr
      yazi
    ];
  };
  data-managers-gui = {
    enable = false;
    excludePackages = with pkgs; [
      celeste
      cosmic-files
      czkawka-full
      fm
      pika-backup
      szyszka
      warp
    ];
  };
  desktop-managers = {
    compositors = [
      "cosmic"
      "gnome"
      "kde"
      "niri"
    ];
    excludePackages = with pkgs; [ ];
  };
  git-utils-cli = {
    enable = false;
    excludePackages = with pkgs; [
      delta
      gh
      gh-dash
      git
      git-absorb
      git-branchless
      git-interactive-rebase-tool
      gitoxide
      gitu
      gitui
      gql
      jujutsu
      onefetch
      sapling
    ];
  };
  git-utils-gui = {
    enable = false;
    excludePackages = with pkgs; [ github-desktop ];
  };
  hex-utils-cli = {
    enable = false;
    excludePackages = with pkgs; [
      biodiff
      heh
      hexyl
    ];
  };
  image-editors = {
    enable = false;
    excludePackages = with pkgs; [
      darktable
      digikam
      gimp-with-plugins
      oculante
      rawtherapee
      simp
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
    enable = false;
    excludePackages = with pkgs; [
      inlyne
      mdcat
      md-tui
    ];
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
    enable = false;
    excludePackages = with pkgs; [
      flare-signal
      fractal
      protonmail-bridge-gui
      thunderbird
    ];
  };
  misc-cli = {
    enable = false;
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
      ruplacer
      russ
      sic-image-cli
      silicon
      speedtest-rs
      tickrs
      toipe
    ];
  };
  misc-gui = {
    enable = false;
    excludePackages = with pkgs; [
      contrast
      emblem
      eyedropper
      fragments
      gnome-decoder
      gnome-solanum
      icon-library
      impression
      newsflash
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
    enable = false;
    excludePackages = with pkgs; [
      ani-cli
      inputs.jerry.packages.${system}.default
      inputs.lobster.packages.${system}.default
      mpv
      rustplayer
      scope-tui
      termusic
      tplay
      twitch-tui
      yaydl
      ytermusic
    ];
  };
  multimedia-gui = {
    enable = false;
    excludePackages = with pkgs; [
      amberol
      coppwr
      fretboard
      glide-media-player
      gnome-podcasts
      helvum
      kooha
      loupe
      metronome
      mousai
      neothesia
      obs-studio
      pipeline
      pwvucontrol
      shortwave
      snapshot
      songrec
      switcheroo
    ];
  };
  music-productions = {
    enable = false;
    excludePackages = with pkgs; [
      ardour
      lmms
      lsp-plugins
      muse
      qtractor
      yabridge
      zrythm
    ];
  };
  nix-utils-cli = {
    enable = false;
    excludePackages = with pkgs; [
      comma
      devenv
      direnv
      fh
      flake-checker
      lorri
      nh
      nix-direnv
      nix-doc
      nix-index
      nix-init
      nix-melt
      nixpkgs-hammering
      nixpkgs-lint-community
      nix-web
      nurl
    ];
  };
  nix-utils-gui = {
    enable = false;
    excludePackages = with pkgs; [
      inputs.nixos-conf-editor.packages.${system}.default
      inputs.nix-software-center.packages.${system}.default
    ];
  };
  office = {
    enable = false;
    excludePackages = with pkgs; [
      libreoffice
      onlyoffice-bin
    ];
  };
  painters = {
    enable = false;
    excludePackages = with pkgs; [
      inkscape-with-extensions
      krita
      mypaint
      rnote
    ];
  };
  resource-monitors-cli = {
    enable = false;
    excludePackages = with pkgs; [
      bottom
      havn
      kmon
      netscanner
      openobserve
      sniffglue
      websocat
      zenith
      zenith-nvidia
    ];
  };
  resource-monitors-gui = {
    enable = false;
    excludePackages = with pkgs; [
      bustle
      mission-center
      process-viewer
      resources
      rustscan
    ];
  };
  security-utils-cli = {
    enable = false;
    excludePackages = with pkgs; [
      cotp
      feroxbuster
      fim-rs
      legba
      lynis
      noseyparker
      oo7
      openvas-scanner
      paper-age
      pdfrip
      ripsecrets
      sbomnix
      vulnix
    ];
  };
  security-utils-gui = {
    enable = false;
    excludePackages = with pkgs; [
      authenticator
      binocle
      gnome-obfuscate
      key-rack
      proton-pass
    ];
  };
  shell-funs = {
    enable = false;
    excludePackages = with pkgs; [
      charasay
      chess-tui
      cmd-wrapped
      dvd-term
      dwt1-shell-color-scripts
      firework-rs
      inputs.fortune-kind.packages.${system}.default
      genact
      globe-cli
      krabby
      macchina
      minesweep-rs
      pfetch-rs
      pipes-rs
      rusty-rain
      terminaltexteffects
      terminal-typeracer
      ttyper
    ];
  };
  shell-utils = {
    enable = false;
    excludePackages = with pkgs; [
      ast-grep
      atuin
      bat
      diffsitter
      eza
      fd
      fish
      gping
      hurl
      ion
      kalker
      lsd
      mcfly
      mprocs
      navi
      nushell
      ouch
      procs
      pueue
      ripgrep
      ripgrep-all
      sad
      sd
      shellharden
      skim
      starship
      systeroid
      tealdeer
      tokei
      topgrade
      watchexec
      xh
      zellij
      zoxide
    ];
  };
  terminals = {
    enable = false;
    excludePackages = with pkgs; [
      alacritty
      rio
      wezterm
      cosmic-term
    ];
  };
  text-editors-cli = {
    enable = false;
    excludePackages = with pkgs; [
      amp
      helix
      neovim
    ];
  };
  text-editors-gui = {
    enable = false;
    excludePackages = with pkgs; [
      cosmic-edit
      lapce
      zed-editor
    ];
  };
  video-editors = {
    enable = false;
    excludePackages = with pkgs; [
      flowblade
      gyroflow
      identity
      kdePackages.kdenlive
      natron
      olive-editor
      openshot-qt
      pitivi
      shotcut
      video-trimmer
      vidmerger
    ];
  };

  imports =
    [ ./home-configuration.nix ]
    ++ (with inputs; [
      catppuccin.homeManagerModules.catppuccin
      ironbar.homeManagerModules.default
      jerry.homeManagerModules.default
      nix-index-database.hmModules.nix-index
      nixvim.homeManagerModules.default
      #nur.modules.home-manager.default
      nyx.homeManagerModules.default
      plasma-manager.homeManagerModules.plasma-manager
      ragenix.homeManagerModules.default
    ])
    ++ (builtins.attrValues outputs.homeManagerModules);
}
