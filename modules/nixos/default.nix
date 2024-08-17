let
  dir = builtins.readDir ./.;
  modulesPaths = builtins.filter (modulePath: modulePath != null) (
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
  finalNixosModules = builtins.listToAttrs (
    builtins.map (modulePath: {
      inherit (modulePath) name;
      value = import modulePath.value;
    }) modulesPaths
  );
in
finalNixosModules
