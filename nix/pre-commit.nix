{
  pkgs,
  pre-commit,
}:

pre-commit.lib.${pkgs.system}.run {
  src = ./.;
  hooks = {
    #flake-checker.enable = true;
    nil.enable = true;
    #treefmt = {
    #  enable = true;
    #  packageOverrides.treefmt = pkgs.treefmt;
    #};
    #typstyle.enable = true;
    typos.enable = true;
    #lychee.enable = true;
    #gptcommit.enable = true;
  };
}
