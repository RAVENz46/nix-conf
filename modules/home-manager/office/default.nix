{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.office;
in
{
  options = {
    office = {
      enable = mkEnableOption "Enables all office apps";

      excludePackages = mkOption {
        description = "List of office packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      optionals stdenv.isLinux [ libreoffice ]
      ++ optionals (stdenv.system == "x86_64-linux") [ onlyoffice-bin ]
    );
  };
}
