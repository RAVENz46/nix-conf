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
        enable = notExcluded pkgs.firefox-devedition;
        package = pkgs.firefox-devedition;
        profiles.dev-edition-default = {
          settings = {
            #"browser.bookmarks.file" = "${./bookmarks.html}";
            "browser.compactmode.show" = true;
            #"browser.places.importBookmarksHTML" = true;
            "browser.toolbars.bookmarks.showOtherBookmarks" = false;
            "browser.urlbar.maxRichResults" = 0;
            "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          };
          extraConfig = ''
            ${builtins.readFile "${pkgs.arkenfox-userjs}/user.js"}
            user_pref("browser.startup.page", 1);
            user_pref("browser.startup.homepage", "${pkgs.chevron}/index.html");
            user_pref("privacy.resistFingerprinting.letterboxing", false);
          '';
          #extensions = with pkgs.nur.repos.rycee.firefox-addons; [
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

      floorp = {
        enable = notExcluded pkgs.floorp;
        policies = {
          ExtensionSettings = {
            "{acf82b50-48cf-4dd4-8059-5c949e754a65}" = {
              installation_mode = "allowed";
            };
          };
        };
        profiles.default = {
          settings = {
            #"browser.bookmarks.file" = "${./bookmarks.html}";
            "browser.compactmode.show" = true;
            "browser.newtabpage.activity-stream.section.highlights.includeBookmarks" = false;
            "browser.newtabpage.activity-stream.showSearch" = false;
            #"browser.places.importBookmarksHTML" = true;
            "browser.startup.homepage_override.extensionControlled" = true;
            "browser.startup.homepage_override.privateAllowed" = true;
            "browser.tabs.hoverPreview.showThumbnails" = false;
            "browser.toolbars.bookmarks.showOtherBookmarks" = false;
            "browser.urlbar.maxRichResults" = 0;
            "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          };
          extraConfig = ''
            ${builtins.readFile "${pkgs.arkenfox-userjs}/user.js"}
          '';
          extensions = with pkgs.nur.repos.rycee.firefox-addons; [
            surfingkeys
            tab-session-manager
            web-archives
          ];
        };
      };

      librewolf = {
        enable = notExcluded pkgs.librewolf;
        policies = {
          ExtensionSettings = {
            "{166411f2-402a-4bca-a3da-38b795ec8007}" = {
              installation_mode = "allowed";
            };
          };
        };
        settings = {
          "browser.bookmarks.restore_default_bookmarks" = false;
          "browser.chrome.toolbar_tips" = false;
          "browser.compactmode.show" = true;
          "browser.newtabpage.activity-stream.section.highlights.includeBookmarks" = false;
          "browser.newtabpage.activity-stream.showSearch" = false;
          "browser.startup.homepage_override.extensionControlled" = true;
          "browser.startup.homepage_override.privateAllowed" = true;
          "browser.toolbars.bookmarks.showOtherBookmarks" = false;
          "browser.toolbars.bookmarks.visibility" = "never";
          "browser.urlbar.maxRichResults" = 0;
          "browser.urlbar.shortcuts.bookmarks" = false;
          "browser.urlbar.shortcuts.history" = false;
          "browser.urlbar.shortcuts.tabs" = false;
          "browser.urlbar.showSearchSuggestionsFirst" = false;
          "browser.urlbar.suggest.bookmark" = false;
          "browser.urlbar.suggest.engines" = false;
          "browser.urlbar.suggest.history" = false;
          "browser.urlbar.suggest.openpage" = false;
          "browser.urlbar.suggest.recentsearches" = false;
          "browser.urlbar.suggest.topsites" = false;
          "general.autoScroll" = true;
          "middlemouse.paste" = false;
          "permissions.default.shortcuts" = 2;
          "privacy.clearOnShutdown_v2.historyFormDataAndDownloads" = true;
          "privacy.clearOnShutdown_v2.siteSettings" = true;
          "privacy.resistFingerprinting.autoDeclineNoUserInputCanvasPrompts" = true;
          #"privacy.resistFingerprinting.letterboxing" = true;
          "security.OCSP.require" = false; # Will be disable
          "security.ssl.require_safe_negotiation" = false; # Will be disable.
          "signon.firefoxRelay.feature" = "disabled";
          "signon.generation.enabled" = false;
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        };
        profiles.default = {
          extensions = with pkgs.nur.repos.rycee.firefox-addons; [
            buster-captcha-solver
            gitako-github-file-tree
            proton-pass
            proton-vpn
            refined-github
            surfingkeys
          ];
          userChrome = ''
            ${builtins.readFile ./librewolf/autohide_toolbox.css}
            ${builtins.readFile ./librewolf/navbar_tabs_oneliner_menu_buttons_on_right.css}
            ${builtins.readFile ./librewolf/page_action_buttons_on_hover.css}
            ${builtins.readFile ./librewolf/tab_close_button_always_on_hover.css}
            ${builtins.readFile ./librewolf/urlbar_info_icons_on_hover.css}
            ${builtins.readFile ./librewolf/userChrome.css}
          '';
        };
      };

      #mullvad-browser = {
      #  enable = notExcluded pkgs.mullvad-browser && (pkgs.stdenv.system == "x86_64-linux");
      #  profiles.default = {
      #    userChrome = ''
      #      ${builtins.readFile ./userChrome.css}
      #    '';
      #    userContent = builtins.readFile {./mullvad-browser}/userContent.css;
      #  };
      #};
    };
  };
}
