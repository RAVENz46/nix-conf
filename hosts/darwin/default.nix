inputs:

{
  imports = [ inputs.nix-index-database.darwinModules.nix-index ];

  nixpkgs.hostPlatform = "aarch64-darwin";
  #nixpkgs.hostPlatform = "x86_64-darwin";
}
