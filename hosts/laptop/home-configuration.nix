{ pkgs, osConfig, ... }:

{
  home = {
    file = {
      #"path/to/file".source = "${pkgs.package-name}/original/path";
    };

    packages = with pkgs; [
      simplex-chat-desktop
      nix-du
    ];

    sessionPath = [
      #"$HOME/.local/bin:$PATH"
    ];

    sessionVariables = {
      #ZELLIJ_AUTO_ATTACH = "true";
      #ZELLIJ_AUTO_EXIT = "true";
      #WEBKIT_DISABLE_DMABUF_RENDERER = 1;
      #WEBKIT_DISABLE_COMPOSITING_MODE = 1;
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
      fixit = "systemctl --user import-environment PATH && systemctl --user restart xdg-desktop-portal.service";
    };
  };

  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [ fcitx5-mozc-ut ];
  };

  programs = {
    git = {
      userName = "RAVENz46";
      #userEmail = "${builtins.readFile ./git-email.txt}";
    };

    librewolf = {
      settings = {
        "extensions.activeThemeID" = "{76aabc99-c1a8-4c1e-832b-d4f2941d5a7a}";
      };
      policies = {
        ExtensionSettings = {
          "{76aabc99-c1a8-4c1e-832b-d4f2941d5a7a}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/file/3990325/latest.xpi";
            installation_mode = "normal_installed";
          };
        };
      };
    };
  };

  xdg = {
    userDirs = {
      createDirectories = true;
    };
  };
}
