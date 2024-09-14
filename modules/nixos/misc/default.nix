{
  config,
  lib,
  pkgs,
  ...
}:

with lib;
let
  cfg = config.misc;
  notExcluded = pkg: !(builtins.elem pkg config.misc.excludePackages);
in
{
  options = {
    misc = {
      enable = mkEnableOption "Enables all miscellaneous";

      excludePackages = mkOption {
        description = "List of misc packages to exclude from the default system";
        type = types.listOf types.package;
        default = [ ];
      };
    };
  };

  config = mkIf cfg.enable {
    environment = {
      systemPackages = subtractLists cfg.excludePackages (with pkgs; [ lact ]);
    };

    users.users = mkIf config.programs.adb.enable (
      genAttrs config.userList (f: {
        extraGroups = [ "adbusers" ];
      })
    );

    programs = {
      adb = {
        enable = notExcluded pkgs.android-tools;
      };

      envision = {
        enable = notExcluded pkgs.envision;
      };

      mouse-actions = {
        enable = notExcluded pkgs.mouse-actions;
        autorun = true;
        package = pkgs.mouse-actions-gui;
      };
    };

    services = {
      garage = {
        enable = notExcluded pkgs.garage;
        settings = { };
      };

      kanata = {
        enable = notExcluded pkgs.kanata;
        keyboards = {
          vimacs = {
            config = ''
              (defsrc
                grv  1    2    3    4    5    6    7    8    9    0    -    =    bspc
                tab  q    w    e    r    t    y    u    i    o    p    [    ]    \
                caps a    s    d    f    g    h    j    k    l    ;    '    ret
                lsft z    x    c    v    b    n    m    ,    .    /    rsft
                lctl lmet lalt           spc            ralt rmet rctl
              )

              (deflayer vimacs
                grv  1    2    3    4    5    6    7    8    9    0    -    =    bspc
                tab  q    w    t    d    k    p    c    e    y    '    [    ]    \
                esc  a    s    r    h    l    b    f    u    i    o    ;    ret
                lsft x    z    v    g    j    n    m    ,    .    /    rsft
                lctl lmet lalt           spc            ralt rmet rctl
              )
            '';
          };
        };
      };

      rkvm = {
        enable = notExcluded pkgs.rkvm;
      };

      rustdesk-server = {
        enable = notExcluded pkgs.rustdesk-server;
      };
    };
  };
}
