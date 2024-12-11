{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.text-editors-gui;
  notExcluded = pkg: !(builtins.elem pkg config.text-editors-gui.excludePackages);
in
{
  options = {
    text-editors-gui = {
      enable = mkEnableOption "Enables all gui text-editors";

      excludePackages = mkOption {
        description = "List of text-editors-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
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
          "catppuccin"
          "nix"
        ];
        userKeymaps = { };
        userSettings = {
          theme = "Catppuccin Mocha";
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
