{
  nixos-host.path = ./nixos-host;
  home-manager-module.path = ./home-manager-module;
  overlays.path = ./overlays;
  prebuild-binary.path = ./prebuild-binary;
}

#let
#  dir = builtins.readDir ./.;
#  templatesPaths = builtins.filter (templatePath: templatePath != null) (builtins.map (name: if dir.${name} == "directory" then { inherit name; value = "${builtins.toString ./.}/${name}"; } else null) (builtins.attrNames dir));
#  finalTemplates = builtins.listToAttrs (builtins.map (templatePath: { inherit (templatePath); name = templatePath.name.path; value = import templatePath.value; }) templatesPaths);
#in finalTemplates
