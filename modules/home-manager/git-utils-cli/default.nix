{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.git-utils-cli;
  notExcluded = pkg: !(builtins.elem pkg config.git-utils-cli.excludePackages);
in
{
  options = {
    git-utils-cli = {
      enable = mkEnableOption "Enables all cli git utilities";

      excludePackages = mkOption {
        description = "List of git-utils-cli packages to exclude from the default home";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    home.packages = subtractLists cfg.excludePackages (
      with pkgs;
      [
        git-absorb
        git-branchless
        git-interactive-rebase-tool
        gitoxide
        gitu
        gql
        onefetch
      ]
    );

    programs = {
      git = {
        enable = notExcluded pkgs.git;
        delta = {
          enable = notExcluded pkgs.delta;
          options = { };
        };
      };

      gh = {
        enable = notExcluded pkgs.gh;
        extensions = with pkgs; [
          gh-markdown-preview
          gh-poi
        ];
        settings = {
          editor = "nvim";
        };
      };

      gh-dash = {
        enable = notExcluded pkgs.gh-dash;
        settings = { };
      };

      gitui = {
        enable = notExcluded pkgs.gitui;
      };

      jujutsu = {
        enable = notExcluded pkgs.jujutsu;
        settings = { };
      };

      sapling = {
        enable = notExcluded pkgs.sapling;
        extraConfig = { };
      };
    };
  };
}
