{
  pkgs ? import <nixpkgs> { },
}:

let
  dir = builtins.readDir ./.;
  pkgsPaths = builtins.filter (pkgPath: pkgPath != null) (
    builtins.map (
      name:
      if dir.${name} == "directory" then
        {
          inherit name;
          value = "${builtins.toString ./.}/${name}";
        }
      else
        null
    ) (builtins.attrNames dir)
  );
  finalPkgs = builtins.listToAttrs (
    builtins.map (pkgPath: {
      inherit (pkgPath) name;
      value = pkgs.callPackage pkgPath.value { };
    }) pkgsPaths
  );
in
finalPkgs
