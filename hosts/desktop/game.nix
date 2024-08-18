{ pkgs, inputs, ... }:

{
  nix.settings = {
    substituters = [ "https://nix-gaming.cachix.org" ];
    trusted-public-keys = [ "nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4=" ];
  };

  home.packages = with pkgs; [
    #lutris-free
    bottles # An easy-to-use wineprefix manager
    #(wineWowPackages.unstableFull.override {
    #    alsaSupport = true;
    #    dbusSupport = true;
    #    fontconfigSupport = true;
    #    gtkSupport = true;
    #    netapiSupport = true;
    #    pulseaudioSupport = true;
    #    waylandSupport = true;
    #    usbSupport = true;
    #})
    #ludusavi # Backup tool for PC game saves
    #steamguard-cli # A linux utility for generating 2FA codes for Steam and managing Steam trade confirmations.
    #steam-tui # Rust TUI client for steamcmd
  ];

  programs.looking-glass-client = {
    enable = pkgs.stdenv.isLinux && pkgs.stdenv.isx86_64;
    settings = { };
  };
}
