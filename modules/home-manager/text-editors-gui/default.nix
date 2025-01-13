{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.text-editors-gui;
  notExcluded = pkg: !(builtins.elem pkg config.text-editors-gui.excludePackages);
in
{
  options = {
    text-editors-gui = {
      enable = lib.mkEnableOption "Enables all gui text-editors";

      excludePackages = lib.mkOption {
        description = "List of text-editors-gui packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      [
        lapce
      ]
      ++ optionals stdenv.isLinux [ cosmic-edit ]
    );

    programs = {
      zed-editor = {
        enable = notExcluded pkgs.zed-editor;
        extensions = [
          "nix"
        ];
        userKeymaps = { };
        userSettings = {
          telemetry = {
            diagnostics = false;
            metrics = false;
          };
          vim_mode = true;
          ui_font_size = 16;
          buffer_font_size = 16;
        };
      };
    };
  };
}
