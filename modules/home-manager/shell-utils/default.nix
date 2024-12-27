{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.shell-utils;
  notExcluded = pkg: !(builtins.elem pkg config.shell-utils.excludePackages);
in
{
  options = {
    shell-utils = {
      enable = mkEnableOption "Enables all shell utilities";

      excludePackages = mkOption {
        description = "List of shell-utils packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    catppuccin = {
      starship = {
        enable = false;
      };
    };

    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        ast-grep
        diffsitter
        fd
        gping
        hurl
        kalker
        mprocs
        ouch
        procs
        ripgrep-all
        sad
        sd
        shellharden
        systeroid
        tokei
        watchexec
        xh
      ]
    );

    programs = {
      atuin = {
        enable = notExcluded pkgs.atuin;
        daemon.enable = true;
        settings = {
          search_mode = "skim";
        };
      };

      bash = {
        enable = true;
      };

      bat = {
        enable = notExcluded pkgs.bat;
      };

      eza = {
        enable = notExcluded pkgs.eza;
        icons = "auto";
        extraOptions = [
          "--group-directories-first"
          "--header"
          "--extended"
        ];
      };

      fish = {
        enable = notExcluded pkgs.fish;
        plugins = [ ];
        shellAbbrs = { };
        functions = {
          fish_greeting = "
            echo '    ∧  ∧       ∧  ∧       ∧  ▲     |¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯|'
            echo '  ( ・∀・)   ﾐ ・∀・ﾐ   ( ・∀・)  < ' (date +%R; date +%a; date +%b; date +%d;) '|'
            echo '~(_ u  uﾉ  @ﾐ_ u  uﾐ  @(_ u  uﾉ    |__________________|'
          ";
          sudo = ''
            if test "$argv" = !!
              eval command sudo $history[1]
            else
              command sudo $argv
            end
          '';
        };
      };

      ion = {
        enable = notExcluded pkgs.ion;
      };

      lsd = {
        enable = notExcluded pkgs.lsd;
        enableAliases = notExcluded pkgs.lsd;
      };

      mcfly = {
        enable = notExcluded pkgs.mcfly;
        fuzzySearchFactor = 0;
      };

      navi = {
        enable = notExcluded pkgs.navi;
        settings = { };
      };

      nushell = {
        enable = notExcluded pkgs.nushell;
      };

      ripgrep = {
        enable = notExcluded pkgs.ripgrep;
        arguments = [ ];
      };

      skim = {
        enable = notExcluded pkgs.skim;
      };

      starship = {
        enable = notExcluded pkgs.starship;
        settings = importTOML ./starship.toml;
      };

      tealdeer = {
        enable = notExcluded pkgs.tealdeer;
        settings = {
          updates = {
            auto_update = true;
          };
        };
      };

      topgrade = {
        enable = notExcluded pkgs.topgrade;
        settings = { };
      };

      zellij = {
        enable = notExcluded pkgs.zellij;
        enableBashIntegration = true;
        enableFishIntegration = true;
        settings = {
          on_force_close = "quit";
          default_layout = "compact";
          simplified_ui = true;
        };
      };

      zoxide = {
        enable = notExcluded pkgs.zoxide;
        options = [ "--cmd j" ];
      };
    };

    services = {
      pueue = {
        enable = notExcluded pkgs.pueue;
        settings = { };
      };
    };
  };
}
