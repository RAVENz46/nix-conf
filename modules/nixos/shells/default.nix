{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.shells;
in
{
  options = {
    shells = {
      enable = lib.mkEnableOption "Enables shells";
    };
  };

  config = lib.mkIf cfg.enable {
    users.users = lib.genAttrs config.userList (f: {
      shell = pkgs.fish;
    });

    environment = {
      shells = with pkgs; [
        bash
        fish
        ion
        nushell
      ];
      systemPackages = with pkgs; [
        ion
        nushell
      ];
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
