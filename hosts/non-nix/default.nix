{
  pkgs,
  inputs,
  ...
}:

{
  config = {
    nixpkgs.hostPlatform = "x86_64-linux";

    system-manager.allowAnyDistro = true;

    #https://github.com/nix-community/home-manager/pull/5355
    environment = {
      etc = {
      };

      pathsToLink = [
      ];

      sessionVariables = {
      };

      systemPackages = with pkgs; [
        inputs.system-manager.packages.${system}.default
      ];
    };

    systemd = {
      packages = with pkgs; [
      ];
      services = {
      };
      tmpfiles.rules = [
      ];
    };
  };
}
