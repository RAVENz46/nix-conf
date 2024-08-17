{
  config,
  lib,
  pkgs,
  inputs,
  outputs,
  ...
}:

{
  imports = [
    inputs.nur.nixosModules.nur
    inputs.home-manager.nixosModules.home-manager
  ];

  nixpkgs.overlays = [ inputs.nixgl.overlays.default ];

  config = {
    nixpkgs.hostPlatform = "x86_64-linux";

    system-manager.allowAnyDistro = true;

    environment = {
      etc = {
        "foo.conf".text = ''
          launch_the_rockets = true
        '';
      };

      systemPackages = with pkgs; [
        ripgrep
        fd
      ];
    };

    systemd.services = {
      foo = {
        enable = true;
        serviceConfig = {
          Type = "oneshot";
          RemainAfterExit = true;
        };
        wantedBy = [ "system-manager.target" ];
        script = ''
          ${lib.getBin pkgs.hello}/bin/hello
          echo "We launched the rockets!"
        '';
      };
    };
  };
}
