{ config, pkgs, ... }:
{
  programs.darling = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    darling-dmg # Darling lets you open macOS dmgs on Linux
  ];
}
