{
  overlays = [
    (self: super: {
      packagenameCHANGEME = super.packagenameCHANGEME.overrideAttrs (old: rec {
        inherit (old) pname;
        version = "";
        src = super.fetchCrate {
          inherit pname;
          inherit version;
          sha256 = "sha256-";
        };
        cargoDeps = old.cargoDeps.overrideAttrs (
          super.lib.const {
            inherit src;
            name = "${old.pname}-${version}-vendor.tar.gz";
            outputHash = "sha256-";
          }
        );
      });
    })
  ];
}

#let
#  addPatches = pkg: patches:
#    pkg.overrideAttrs (oldAttrs: {
#      patches = (oldAttrs.patches or [ ]) ++ patches;
#    });
#in
#{
#  #hydra_unstable = addPatches prev.hydra_unstable [./hydra-restrict-eval.diff];
#  #nativeBuildInputs = (oldAttrs.nativeBuildInputs or [ ]) ++ [ final.python3.pkgs.pyyaml ];
#
#  myPkgs = final: prev: import ../pkgs { pkgs = final; };
#  coppwr-overlays = import ./coppwr;
#}
