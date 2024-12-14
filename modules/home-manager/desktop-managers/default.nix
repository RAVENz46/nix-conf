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
  mkUpper =
    str:
    (toUpper (builtins.substring 0 1 str)) + (builtins.substring 1 (builtins.stringLength str) str);
in
{
  options = {
    desktop-managers = {
      compositors = mkOption {
        type = types.listOf types.str;
        description = "Enable cosmic/gnome/kde/niri";
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
    (mkIf (cfg.compositors != [ ]) {
      home.pointerCursor = {
        #name = "ayabe";
        #package = pkgs.ayabe-cursor;
        name = "shinon";
        package = pkgs.shinon-cursor;
        size = 64; # 24 32 48 64 available
        gtk.enable = true;
      };

      gtk = {
        enable = true;
        theme = {
          name = "Catppuccin-GTK-${mkUpper config.catppuccin.accent}-Dark-Compact";
          package = pkgs.magnetic-catppuccin-gtk.override {
            accent = [ "${config.catppuccin.accent}" ];
            size = "compact";
            tweaks = [ "macos" ];
          };
        };
      };

      xdg.configFile = {
        "gtk-4.0/assets".source =
          "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
        "gtk-4.0/gtk.css".source =
          "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
        "gtk-4.0/gtk-dark.css".source =
          "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
      };

      programs.eww = {
        enable = notExcluded pkgs.eww;
        configDir = ./eww;
      };
    })

    (mkIf (builtins.elem "cosmic" cfg.compositors) { })

    (mkIf (builtins.elem "gnome" cfg.compositors) {
      home.packages =
        (with pkgs; [
          dconf-editor
          gnome-tweaks
        ])
        ++ (with pkgs.gnomeExtensions; [
          #advanced-alttab-window-switcher
          #alttab-mod
          app-hider
          #app-icons-taskbar
          appindicator
          #arcmenu
          blur-my-shell
          #containers
          custom-hot-corners-extended
          #dash-to-panel
          desktop-cube
          #gesture-improvements
          #gsconnect
          #improved-osk
          just-perfection
          quick-settings-tweaker
          #sermon
          top-bar-organizer
          unite
          workspaces-indicator-by-open-apps
        ]);
      # Use dconf.nix
      # or run "dconf watch /" and change settings
      dconf.settings = { };
    })

    (mkIf (builtins.elem "kde" cfg.compositors) {
      home.packages = (with pkgs; [ application-title-bar ]) ++ (with pkgs.kdePackages; [ ]);

      programs.plasma = {
        enable = true;
        #theme = "catppuccin";
      };
    })

    (mkIf (builtins.elem "niri" cfg.compositors) {
      programs = {
        ironbar = {
          enable = true;
        };
        niri = {
          settings = {
            binds = with config.lib.niri.actions; {
              "Ctrl+Alt+Q".action = quit;
              "Super+A".action = spawn "cosmic-launcher";
              "Super+Q".action = close-window;
              "Super+H".action = focus-column-left;
              "Super+L".action = focus-column-right;
              "Super+J".action = focus-window-or-workspace-down;
              "Super+K".action = focus-window-or-workspace-up;
              "Super+Shift+H".action = move-column-left;
              "Super+Shift+L".action = move-column-right;
              "Super+Shift+J".action = move-window-down-or-to-workspace-down;
              "Super+Shift+K".action = move-window-up-or-to-workspace-up;
              "Super+S".action = consume-window-into-column;
              "Super+Shift+S".action = expel-window-from-column;
              "Super+1".action = focus-workspace 1;
              "Super+2".action = focus-workspace 2;
              "Super+3".action = focus-workspace 3;
              "Super+4".action = focus-workspace 4;
              "Super+5".action = focus-workspace 5;
              "Super+6".action = focus-workspace 6;
              "Super+7".action = focus-workspace 7;
              "Super+8".action = focus-workspace 8;
              "Super+9".action = focus-workspace 9;
              "Super+Shift+1".action = move-window-to-workspace 1;
              "Super+Shift+2".action = move-window-to-workspace 2;
              "Super+Shift+3".action = move-window-to-workspace 3;
              "Super+Shift+4".action = move-window-to-workspace 4;
              "Super+Shift+5".action = move-window-to-workspace 5;
              "Super+Shift+6".action = move-window-to-workspace 6;
              "Super+Shift+7".action = move-window-to-workspace 7;
              "Super+Shift+8".action = move-window-to-workspace 8;
              "Super+Shift+9".action = move-window-to-workspace 9;
              "Super+Ctrl+1".action = move-column-to-workspace 1;
              "Super+Ctrl+2".action = move-column-to-workspace 2;
              "Super+Ctrl+3".action = move-column-to-workspace 3;
              "Super+Ctrl+4".action = move-column-to-workspace 4;
              "Super+Ctrl+5".action = move-column-to-workspace 5;
              "Super+Ctrl+6".action = move-column-to-workspace 6;
              "Super+Ctrl+7".action = move-column-to-workspace 7;
              "Super+Ctrl+8".action = move-column-to-workspace 8;
              "Super+Ctrl+9".action = move-column-to-workspace 9;
              "Super+M".action = maximize-column;
              "Ctrl+Alt+H".action = show-hotkey-overlay;
            };
            spawn-at-startup = [
              { command = [ "ironbar" ]; }
              { command = [ "swww-daemon" ]; }
            ];
            input = {
              mouse = {
                accel-profile = "flat";
              };
              touchpad = {
                accel-profile = "flat";
              };
              trackpoint = {
                accel-profile = "flat";
              };
            };
            cursor = {
              inherit (config.home.pointerCursor) size;
              theme = config.home.pointerCursor.name;
            };
            layout = {
              border = {
                enable = true;
              };
            };
          };
        };
      };
      xdg.configFile."ironbar" = {
        source = "${./ironbar}";
        recursive = true;
      };
    })
  ];
}
