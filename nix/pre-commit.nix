{
  pkgs,
  pre-commit,
}:

pre-commit.lib.${pkgs.system}.run {
  src = ./.;
  hooks = {
    #alejandra.enable = true;
    #deadnix.enable = true;
    #flake-checker.enable = true;
    nil.enable = true;
    nixfmt-rfc-style.enable = true;
    statix.enable = true;
    #ruff.enable = true;
    stylua.enable = true;
    taplo.enable = true;
    #typstyle.enable = true;
    typos.enable = true;
    lychee.enable = true;
    #gptcommit.enable = true;
  };
}
