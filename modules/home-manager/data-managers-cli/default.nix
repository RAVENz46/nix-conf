{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.data-managers-cli;
  notExcluded = pkg: !(builtins.elem pkg config.data-managers-cli.excludePackages);
in
{
  options = {
    data-managers-cli = {
      enable = mkEnableOption "Enables all cli data-managers";

      excludePackages = mkOption {
        description = "List of data-managers-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
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
