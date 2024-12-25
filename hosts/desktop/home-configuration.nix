{
  lib,
  pkgs,
  osConfig,
  inputs,
  ...
}:

{
  home = {
    file = {
      #"path/to/file".source = "${pkgs.package-name}/original/path";
    };

    packages = with pkgs; [
      # These should install system-wide
      bcachefs-tools # Tool for managing bcachefs filesystems
      kernel-hardening-checker
      killport # A command-line tool to easily kill processes running on a specified port
      avml
      #nym # Mixnet providing IP-level privacy
      #websurfx
      #stract
      #amdgpu_top
      #mistral-rs
      #zluda
      #stardust-xr-kiara
      #stardust-xr-server
      #stardust-xr-gravity
      #stardust-xr-phobetor
      #stardust-xr-magnetar
      #stardust-xr-flatland
      #stardust-xr-protostar
      #stardust-xr-sphereland
      #stardust-xr-atomosphere
      #gpauth
      #gpclient

      #espanso #hm module available
      #deltachat-desktop
      #nekoray
      cosmic-player
      #glicol-cli # Cross-platform music live coding in terminal
      #keypunch
      simplex-chat-desktop
      #pw-viz
      netop
      #rogcat
      tasks
      nix-du
      rippkgs
      cached-nix-shell
      #rustdesk
      #rustdesk-flutter
      #srgn
      surfer
      forecast
      nix-inspect
      #viu
      manga-tui
      papers
    ];

    sessionPath = [
      #"$HOME/.local/bin:$PATH"
    ];

    sessionVariables = {
      #ZELLIJ_AUTO_ATTACH = "true";
      #ZELLIJ_AUTO_EXIT = "true";
      #WEBKIT_DISABLE_DMABUF_RENDERER = 1;
      #WEBKIT_DISABLE_COMPOSITING_MODE = 1;
      COSMIC_DATA_CONTROL_ENABLED = 1;
    };

    shellAliases = {
      locksw = "cp flake.lock backups/flake-(date +%d-%b-%R;).lock && nix flake update";
      seeyou = "sudo nix flake update && sudo nixos-rebuild boot --flake .#nixos";
      isitok = "sudo nix-channel --update && nix flake update && sudo nixos-rebuild dry-activate --flake .#${osConfig.networking.hostName}";
      testit = "sudo nix flake update && sudo nixos-rebuild test --flake .#nixos";
      letsgo = "sudo nix flake update && sudo nixos-rebuild switch --flake .#nixos";
      rolbak = "sudo nixos-rebuild --rollback switch --flake .#${osConfig.networking.hostName}";
      nv = "nvim";
      "..." = "cd ../..";
      "...." = "cd ../../..";
      "....." = "cd ../../../..";
      #letsgo = "sudo nix flake update && sudo nixos-rebuild switch --flake .#${config.networking.hostName}";
      #system-manager switch --flake .
      #darwin-rebuild switch --flake .#${config.networking.hostName}
      #nix-on-droid switch --flake .
      #home-manager switch --flake .username
    };
  };

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [ fcitx5-mozc ];
  };

  programs = {
    git = {
      userName = "RAVENz46";
      #userEmail = "${builtins.readFile ./git-email.txt}";
    };

    librewolf = {
      settings = {
        "extensions.activeThemeID" = "{f4363cd3-9ba9-453d-b2b2-66e6e1bafe73}";
      };
      policies = {
        ExtensionSettings = {
          "{f4363cd3-9ba9-453d-b2b2-66e6e1bafe73}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/3989640/latest.xpi";
            installation_mode = "normal_installed";
          };
        };
      };
    };

    sapling = {
      userName = "RAVENz46";
      userEmail = "";
    };
  };

  xdg = {
    userDirs = {
      createDirectories = true;
    };
    desktopEntries = {
      fm = {
        name = "fm";
        exec = "fm %F";
        terminal = false;
        startupNotify = true;
        categories = [
          "Utility"
          "FileManager"
        ];
        mimeType = [ "inode/directory" ];
      };
    };
  };
}
