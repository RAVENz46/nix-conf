{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.localization;
in
{
  options = {
    localization = {
      enable = lib.mkEnableOption "Enables localization";
    };
  };

  config = lib.mkIf cfg.enable {
    time.timeZone = "Asia/Tokyo";
    i18n = {
      extraLocaleSettings = {
        LC_ADDRESS = "ja_JP.UTF-8";
        LC_IDENTIFICATION = "ja_JP.UTF-8";
        LC_MEASUREMENT = "ja_JP.UTF-8";
        LC_MONETARY = "ja_JP.UTF-8";
        LC_NAME = "ja_JP.UTF-8";
        LC_NUMERIC = "ja_JP.UTF-8";
        LC_PAPER = "ja_JP.UTF-8";
        LC_TELEPHONE = "ja_JP.UTF-8";
        LC_TIME = "en_US.UTF-8";
      };
    };

    fonts = {
      #fontconfig.cache32Bit = true;
      packages =
        with pkgs;
        [
          icomoon-feather
          inter-nerdfont
          noto-fonts-lgc-plus
          noto-fonts-cjk-sans
          noto-fonts-cjk-serif
          noto-fonts-color-emoji
          noto-fonts-emoji-blob-bin
          noto-fonts-monochrome-emoji
        ]
        ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
    };
  };
}
