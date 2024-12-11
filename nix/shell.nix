{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  packages = with pkgs; [
    just # A handy way to save and run project-specific commands
    #lychee # A fast, async, stream-based link checker written in Rust
    #prettypst
    typos # Source code spell checker
    #typst # A new markup-based typesetting system that is powerful and easy to learn
    #typst-lsp # A brand-new language server for Typst
    #typst-live # Hot reloading for your typst files
    #typst-preview
  ];
}
