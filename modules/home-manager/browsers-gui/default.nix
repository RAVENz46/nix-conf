{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.browsers-gui;
  notExcluded = pkg: !(builtins.elem pkg config.browsers-gui.excludePackages);
in
{
  options = {
    browsers-gui = {
      enable = mkEnableOption "Enables all gui browsers";

      excludePackages = mkOption {
        description = "List of browsers-gui packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        arti
        browdi
        browsers
        ladybird
        nyxt
      ]
      ++ optionals stdenv.isLinux [ geopard ]
    );

    programs = {
      chromium = {
        enable = notExcluded pkgs.ungoogled-chromium && pkgs.stdenv.isLinux;
        package = pkgs.ungoogled-chromium;
      };

      firefox = {
        enable = notExcluded pkgs.firefox-devedition && pkgs.stdenv.isLinux;
        package = pkgs.firefox-devedition;
        profiles.dev-edition-default = {
          settings = {
            #"browser.bookmarks.file" = "${./bookmarks.html}";
            "browser.compactmode.show" = true;
            #"browser.places.importBookmarksHTML" = true;
            "browser.toolbars.bookmarks.showOtherBookmarks" = false;
            "browser.urlbar.maxRichResults" = 0;
            "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
            "ui.context_menus.after_mouseup" = true;
          };
          extraConfig = ''
            ${builtins.readFile "${pkgs.arkenfox-userjs}/user.js"}
            user_pref("browser.startup.page", 1);
            user_pref("browser.startup.homepage", "${pkgs.chevron}/index.html");
            user_pref("privacy.resistFingerprinting.letterboxing", false);
          '';
          #extensions = with config.nur.repos.rycee.firefox-addons; [
          #  gesturefy
          #  surfingkeys
          #];
          #userChrome = ''
          #  ${builtins.readFile ./userChrome.css}
          #'';
          #userContent = ''
          #  ${builtins.readFile ./userContent.css}
          #'';
        };
      };

      #floorp = {
      #  enable = notExcluded pkgs.floorp && pkgs.stdenv.isLinux;
      #  profiles.default = {
      #    extensions = with config.nur.repos.rycee.firefox-addons; [
      #      gesturefy
      #      #side-view
      #      surfingkeys
      #      tab-session-manager
      #      web-archives
      #    ];
      #  };
      #};

      librewolf = {
        enable = notExcluded pkgs.librewolf && pkgs.stdenv.isLinux;
        settings = {
          "browser.bookmarks.restore_default_bookmarks" = false;
          "browser.compactmode.show" = true;
          "browser.toolbars.bookmarks.showOtherBookmarks" = false;
          "browser.toolbars.bookmarks.visibility" = "never";
          "browser.urlbar.maxRichResults" = 0;
          #"network.trr.mode" = 3; # Required for proton-vpn
          "privacy.clearOnShutdown.cookies" = false; # Make manage exceptions work, but reduce privacy.
          #"privacy.resistFingerprinting.letterboxing" = true;
          "security.OCSP.require" = false; # Required for proton-vpn
          "security.ssl.require_safe_negotiation" = false; # Will be disable.
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "ui.context_menus.after_mouseup" = true;
        };
        #profiles.default = {
        #  extensions = with config.nur.repos.rycee.firefox-addons; [
        #    buster-captcha-solver
        #    gesturefy
        #    gitako-github-file-tree
        #    proton-pass
        #    proton-vpn
        #    refined-github
        #    surfingkeys
        #    ublock-origin
        #  ];
        #};
      };

      #mullvad-browser = {
      #  enable = notExcluded pkgs.mullvad-browser && (pkgs.stdenv.system == "x86_64-linux");
      #  profiles.default = {
      #    userChrome = ''
      #      ${./oju2.png}
      #      ${builtins.readFile ./userChrome.css}
      #    '';
      #    userContent = ''
      #      ${builtins.readFile ./userContent.css}
      #    '';
      #  };
      #};
    };
  };
}
