{
  pkgs,
  inputs,
  outputs,
  osConfig,
  ...
}:

{
  home = {
    username = "dagon";
    homeDirectory = "/home/dagon";
    stateVersion = "24.11";
  };
  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";

  data-managers-tui.enable = true;
  data-managers-tui.excludePackages = with pkgs; [
    dua
    dust
    dysk
    fclones
    felix-fm
    projectable
    rust-traverse
  ];
  git-utils-tui.enable = true;
  git-utils-tui.excludePackages = with pkgs; [
    cocogitto
    difftastic
    gex
    gfold
    gimoji
    git-agecrypt
    git-branchless
    git-cliff
    git-dive
    git-gr
    git-ignore
    git-instafix
    git-interactive-rebase-tool
    git-mit
    git-nomad
    gitnr
    gitoxide
    git-ps-rs
    git-stack
    git-together
    gitu
    git-upstream
    git-workspace
    gql
    jujutsu
    onefetch
    stgit
  ];
  json-utils-tui.enable = false;
  json-utils-tui.excludePackages = with pkgs; [
    jaq
    jless
    jql
    xq
  ];
  markdown-utils-tui.enable = false; # I have to write mdbook config
  markdown-utils-tui.excludePackages = with pkgs; [
    inlyne
    mdbook
    mdbook-admonish
    mdbook-cmdrun
    mdbook-emojicodes
    mdbook-footnote
    mdbook-graphviz
    mdbook-i18n-helpers
    mdbook-katex
    mdbook-open-on-gh
    mdbook-pagetoc
    mdbook-pdf
    mdbook-toc
  ];
  nix-utils-tui.enable = true;
  nix-utils-tui.excludePackages = with pkgs; [
    nix-your-shell
    statix
  ];
  shell-utils.enable = true;
  shell-utils.excludePackages = with pkgs; [
    ast-grep
    lsd
    mcfly
    pls
    pueue
    repgrep
    ripgrep-all
    topgrade
    zellij
  ];
  text-editors-tui.enable = true;
  text-editors-tui.excludePackages = with pkgs; [ ];
  theme.enable = true;
  catppuccin = {
    enable = true;
    flavor = "${osConfig.catppuccin.flavor}";
    accent = "${osConfig.catppuccin.accent}";
  };

  home.sessionVariables = {
    #DOCKER_HOST = unix://$XDG_RUNTIME_DIR/podman/podman.sock;
    #ZELLIJ_AUTO_ATTACH = "true";
    #ZELLIJ_AUTO_EXIT = "true";
  };

  home.sessionPath = [
    #"$HOME/.local/bin:$PATH"
  ];

  home.shellAliases = {
    locksw = "cp flake.lock backups/flake-(date +%d-%b-%R;).lock && nix flake update";
    isitok = "sudo nix-channel --update && nix flake update && sudo nixos-rebuild dry-activate --flake .#${osConfig.networking.hostName}";
    rolbak = "sudo nixos-rebuild --rollback switch --flake .#${osConfig.networking.hostName}";
    nv = "nvim";
    "..." = "cd ../..";
    "...." = "cd ../../..";
    fixit = "systemctl --user import-environment PATH && systemctl --user restart xdg-desktop-portal.service";
  };

  # add shell config for color-script here in the future

  imports = [
    # inputs.nix-colors.homeManagerModules.default
    inputs.nixvim.homeManagerModules.nixvim
    inputs.catppuccin.homeManagerModules.catppuccin
    inputs.nix-index-database.hmModules.nix-index
    inputs.nur.hmModules.nur
  ] ++ (builtins.attrValues outputs.homeManagerModules);

  nix.registry = { };

  home.file = {
    #"path/to/file".source = "${pkgs.package-name}/original/path";
  };

  programs.direnv = {
    enable = true;
    config = { };
    stdlib = "";
    nix-direnv.enable = true;
  };
}
