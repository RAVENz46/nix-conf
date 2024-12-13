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
            "*" = {
              installation_mode = "blocked";
            };
            "{acf82b50-48cf-4dd4-8059-5c949e754a65}" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4373143/latest.xpi";
              installation_mode = "normal_installed";
            };
            "{a8332c60-5b6d-41ee-bfc8-e9bb331d34ad}" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4394007/latest.xpi";
              installation_mode = "normal_installed";
            };
            "Tab-Session-Manager@sienori" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4298614/latest.xpi";
              installation_mode = "normal_installed";
            };
            "{d07ccf11-c0cd-4938-a265-2a4d6ad01189}" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4361316/latest.xpi";
              installation_mode = "normal_installed";
            };
          };
        };
        profiles.default = {
          settings = {
            "browser.bookmarks.file" = "${./bookmarks.html}";
            "browser.compactmode.show" = true;
            "browser.newtabpage.activity-stream.section.highlights.includeBookmarks" = false;
            "browser.newtabpage.activity-stream.showSearch" = false;
            "browser.places.importBookmarksHTML" = true;
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
        };
      };

      librewolf = {
        enable = notExcluded pkgs.librewolf;
        policies = {
          ExtensionSettings = {
            #"*" = {
            #  installation_mode = "blocked";
            #};
            "{e58d3966-3d76-4cd9-8552-1582fbc800c1}" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4297951/latest.xpi";
              installation_mode = "normal_installed";
            };
            "{983bd86b-9d6f-4394-92b8-63d844c4ce4c}" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4315380/latest.xpi";
              installation_mode = "normal_installed";
            };
            "78272b6fa58f4a1abaac99321d503a20@proton.me" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4393918/latest.xpi";
              installation_mode = "normal_installed";
            };
            "vpn@proton.ch" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4370777/latest.xpi";
              installation_mode = "normal_installed";
            };
            "{a4c4eda4-fb84-4a84-b4a1-f7c1cbf2a1ad}" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4402789/latest.xpi";
              installation_mode = "normal_installed";
            };
            "{166411f2-402a-4bca-a3da-38b795ec8007}" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4300211/latest.xpi";
              installation_mode = "normal_installed";
            };
            "{a8332c60-5b6d-41ee-bfc8-e9bb331d34ad}" = {
              install_url = "https://addons.mozilla.org/firefox/downloads/file/4394007/latest.xpi";
              installation_mode = "normal_installed";
            };
          };
        };
        settings = {
          "browser.bookmarks.file" = "${./bookmarks.html}";
          "browser.chrome.toolbar_tips" = false;
          "browser.compactmode.show" = true;
          "browser.newtabpage.activity-stream.section.highlights.includeBookmarks" = false;
          "browser.newtabpage.activity-stream.showSearch" = false;
          "browser.places.importBookmarksHTML" = true;
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
