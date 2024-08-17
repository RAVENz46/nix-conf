{
  config,
  lib,
  pkgs,
  inputs,
  outputs,
  ...
}:

{
  nixpkgs.overlays = [
    inputs.nixgl.overlays.default

    #(final: prev: {
    #  hi = final.hello.overrideAttrs (oldAttrs: {
    #    patches = [ ./change-hello-to-hi.patch ];
    #  });
    #})

    #(self: super: {
    #  packagenameCHANGEME = super.packagenameCHANGEME.overrideAttrs (old: rec {
    #    inherit (old) pname;
    #    version = "";
    #    src = super.fetchCrate {
    #      inherit pname;
    #      inherit version;
    #      sha256 = "sha256-";
    #    };
    #    cargoDeps = old.cargoDeps.overrideAttrs (super.lib.const {
    #      inherit src;
    #      name = "${old.pname}-${version}-vendor.tar.gz";
    #      outputHash = "sha256-";
    #    });
    #  });
    #})
  ] ++ (builtins.attrValues outputs.overlays);
}
