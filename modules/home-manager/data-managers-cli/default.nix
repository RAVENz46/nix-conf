{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.data-managers-cli;
  notExcluded = pkg: !(builtins.elem pkg config.data-managers-cli.excludePackages);
in
{
  options = {
    data-managers-cli = {
      enable = lib.mkEnableOption "Enables all cli data-managers";

      excludePackages = lib.mkOption {
        description = "List of data-managers-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        conserve
        dua
        dust
        dysk
        fclones
        felix-fm
        rustic
        tere
        termscp
      ]
    );

    programs = {
      broot = {
        enable = notExcluded pkgs.broot;
      };

      joshuto = {
        enable = notExcluded pkgs.joshuto;
      };

      xplr = {
        enable = notExcluded pkgs.xplr;
      };

      yazi = {
        enable = notExcluded pkgs.yazi;
        enableBashIntegration = true;
        enableFishIntegration = true;
        enableNushellIntegration = true;
        keymap = { };
        settings = {
          manager = {
            sort_by = "alphabetical";
            sort_dir_first = true;
            show_hidden = true;
            show_symlink = true;
          };
        };
      };
    };
  };
}
