let
  dir = builtins.readDir ./.;
  overlaysPaths = builtins.filter (overlayPath: overlayPath != null) (
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
  finalOverlays = builtins.listToAttrs (
    builtins.map (overlayPath: {
      inherit (overlayPath) name;
      value = import overlayPath.value;
    }) overlaysPaths
  );
in
finalOverlays // { myPkgs = final: prev: import ../pkgs { pkgs = final; }; }
