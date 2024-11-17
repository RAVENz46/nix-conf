{
  lib,
  pkgs,
  osConfig,
  inputs,
  ...
}:

{
  home = {
    file = {
      #"path/to/file".source = "${pkgs.package-name}/original/path";
    };

    sessionVariables = {
      #ZELLIJ_AUTO_ATTACH = "true";
      #ZELLIJ_AUTO_EXIT = "true";
    };

    sessionPath = [
      #"$HOME/.local/bin:$PATH"
    ];

    shellAliases = {
      locksw = "cp flake.lock backups/flake-(date +%d-%b-%R;).lock && nix flake update";
      isitok = "sudo nix-channel --update && nix flake update && sudo nixos-rebuild dry-activate --flake .#${osConfig.networking.hostName}";
      rolbak = "sudo nixos-rebuild --rollback switch --flake .#${osConfig.networking.hostName}";
      nv = "nvim";
      "..." = "cd ../..";
      "...." = "cd ../../..";
    };
  };
}
