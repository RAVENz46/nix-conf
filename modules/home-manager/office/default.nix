{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.office;
in
{
  options = {
    office = {
      enable = lib.mkEnableOption "Enables all office apps";

      excludePackages = lib.mkOption {
        description = "List of office packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
      with pkgs;
      lib.optionals stdenv.isLinux [ libreoffice ]
      ++ lib.optionals (stdenv.system == "x86_64-linux") [ onlyoffice-bin ]
    );
  };
}
