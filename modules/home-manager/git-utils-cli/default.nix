{
  config,
  lib,
  pkgs,
  ...
}:

let
  cfg = config.git-utils-cli;
  notExcluded = pkg: !(builtins.elem pkg config.git-utils-cli.excludePackages);
in
{
  options = {
    git-utils-cli = {
      enable = lib.mkEnableOption "Enables all cli git utilities";

      excludePackages = lib.mkOption {
        description = "List of git-utils-cli packages to exclude from the default home";
        type = lib.types.listOf lib.types.package;
        default = [ ];
      };
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = lib.subtractLists cfg.excludePackages (
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
