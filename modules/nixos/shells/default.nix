{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.shells;
in
{
  options = {
    shells = {
      enable = mkEnableOption "Enables shells";
    };
  };

  config = mkIf cfg.enable {
    users.users = genAttrs config.userList (f: {
      shell = pkgs.fish;
    });

    environment = {
      shells = with pkgs; [
        bash
        fish
        nushell
      ];
      systemPackages = with pkgs; [ nushell ];
    };

    programs = {
      bash = {
        interactiveShellInit = ''
          set -o vi
        '';
        blesh.enable = true;
      };

      fish = {
        enable = true;
        interactiveShellInit = ''
          set -g fish_key_bindings fish_vi_key_bindings
        '';
      };
    };
  };
}
