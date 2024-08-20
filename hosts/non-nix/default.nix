{
  pkgs,
  inputs,
  ...
}:

{
  config = {
    nixpkgs.hostPlatform = "x86_64-linux";

    system-manager.allowAnyDistro = true;

    environment = {
      etc = {
      };
      
      pathsToLink = [
      ];

      sessionVariables = {
      };

      systemPackages = (with pkgs; [
        inputs.system-manager.packages.${system}.default
      ]);
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
