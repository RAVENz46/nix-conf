{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.desktop-managers;
  notExcluded = pkg: !(builtins.elem pkg config.desktop-managers.excludePackages);
in
{
  options = {
    desktop-managers = {
      compositors = mkOption {
        type = types.listOf types.str;
        description = "Enable cosmic/niri";
        default = [ ];
      };

      excludePackages = mkOption {
        description = "List of desktop-managers packages to exclude from the default system";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkMerge [
    (mkIf (notExcluded pkgs.cosmic-greeter) {
      services = {
        displayManager.cosmic-greeter.enable = true;
      };
    })

    (mkIf (cfg.compositors != [ ]) {
      environment = {
        sessionVariables = {
          NIXOS_OZONE_WL = "1";
        };
        systemPackages = with pkgs; [
          cosmic-launcher
          pop-launcher
        ];
      };

      hardware.graphics = {
        enable = true;
      };

      services = {
        libinput = {
          enable = true;
          mouse.accelProfile = "flat";
          touchpad.accelProfile = "flat";
        };
      };
    })

    (mkIf (builtins.elem "cosmic" cfg.compositors) {
      environment = {
        cosmic.excludePackages = with pkgs; [
          adwaita-icon-theme
          cosmic-edit
          cosmic-launcher
          cosmic-term
          hicolor-icon-theme
          pop-icon-theme
          pop-launcher
        ];
      };

      security.rtkit.enable = mkForce false;

      services = {
        desktopManager.cosmic = {
          enable = true;
          xwayland.enable = false;
        };
      };

      nix.settings = {
        substituters = [ "https://cosmic.cachix.org/" ];
        trusted-public-keys = [ "cosmic.cachix.org-1:Dya9IyXD4xdBehWjrkPv6rtxpmMdRel02smYzA85dPE=" ];
      };

      #systemd.user.extraConfig = ''
      #  DefaultEnvironment="PATH=/run/wrappers/bin:/etc/profiles/per-user/%u/bin:/nix/var/nix/profiles/default/bin:/run/current-system/sw/bin"
      #'';
    })

    (mkIf (builtins.elem "niri" cfg.compositors) {
      environment = {
        systemPackages = with pkgs; [ swww ];
      };

      programs = {
        niri = {
          enable = true;
        };
      };
    })
  ];
}
