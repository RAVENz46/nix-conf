{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.desktop-managers;
  notExcluded = pkg: !(builtins.elem pkg config.desktop-managers.excludePackages);
in
{
  options = {
    desktop-managers = {
      compositors = lib.mkOption {
        type = lib.types.listOf lib.types.str;
        description = "Enable cosmic/niri";
        default = [ ];
      };

      excludePackages = lib.mkOption {
        description = "List of desktop-managers packages to exclude from the default system";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkMerge [
    (lib.mkIf (notExcluded pkgs.cosmic-greeter) {
      services = {
        displayManager.cosmic-greeter.enable = true;
      };
    })

    (lib.mkIf (cfg.compositors != [ ]) {
      boot = {
        plymouth = {
          enable = true;
          logo = ./plymouth.png;
          theme = "circuit";
          themePackages = with pkgs; [
            (adi1090x-plymouth-themes.override {
              selected_themes = [ config.boot.plymouth.theme ];
            })
            (runCommand "add-logos" { inherit (config.boot.plymouth) logo theme; } ''
              mkdir -p $out/share/plymouth/themes/$theme
              ln -s $logo $out/share/plymouth/themes/$theme/header-image.png
            '')
          ];
        };
      };

      catppuccin = {
        plymouth = {
          enable = false;
        };
      };

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
        udisks2 = {
          enable = true;
        };
      };
    })

    (lib.mkIf (builtins.elem "cosmic" cfg.compositors) {
      environment = {
        cosmic.excludePackages = with pkgs; [
          cosmic-edit
          cosmic-launcher
          cosmic-player
          cosmic-term
          pop-icon-theme
          pop-launcher
        ];
      };

      security.rtkit.enable = lib.mkForce false;

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
    })

    (lib.mkIf (builtins.elem "niri" cfg.compositors) {
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
