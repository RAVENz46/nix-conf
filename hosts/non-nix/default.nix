{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

#let
#  settingsFormat = pkgs.formats.ini {
#    listToValue = lib.concatMapStringsSep "," (lib.generators.mkValueStringDefault {});
#  };
#  configFiles = lib.mapAttrs (name: value: (settingsFormat.generate name value)) (lib.mapAttrs' (name: value: lib.nameValuePair name value ) config.services.udisks2.settings);
#in

{
  config = {
    nixpkgs.hostPlatform = "x86_64-linux";

    system-manager.allowAnyDistro = true;

    environment = {
      #etc = 
      #  (lib.mapAttrs' (name: value: lib.nameValuePair "udisks2/${name}" { source = value; } ) configFiles) // (
      #let
      #  libblockdev = pkgs.udisks2.libblockdev;
      #  majorVer = lib.versions.major libblockdev.version;
      #in {
      #  # We need to make sure /etc/libblockdev/@major_ver@/conf.d is populated to avoid
      #  # warnings
      #  "libblockdev/${majorVer}/conf.d/00-default.cfg".source = "${libblockdev}/etc/libblockdev/${majorVer}/conf.d/00-default.cfg";
      #  "libblockdev/${majorVer}/conf.d/10-lvm-dbus.cfg".source = "${libblockdev}/etc/libblockdev/${majorVer}/conf.d/10-lvm-dbus.cfg";
      #});
      
      pathToLink = [
        "share"
        "/libexec"
        "/share/accountsservice"
      ];

      #sessionVariables = {
      #  XDG_CONFIG_DIRS = ["$HOME/.config/kdedefaults"];
      #  KPACKAGE_DEP_RESOLVERS_PATH = "${pkgs.kdePackages.frameworkintegration.out}/libexec/kf6/kpackagehandlers";
      #};

      systemPackages = (with pkgs; [
        #accountsservice
        noto-fonts
        #udisks2
        xwayland
        hicolor-icon-theme # fallback icons
        xdg-user-dirs # recommended upstream
      ]) ++ (with pkgs.kdePackages; [
        qtwayland # Hack? To make everything run on Wayland
        qtsvg # Needed to render SVG icons

        # Frameworks with globally loadable bits
        frameworkintegration # provides Qt plugin
        kauth # provides helper service
        kcoreaddons # provides extra mime type info
        kded # provides helper service
        kfilemetadata # provides Qt plugins
        kguiaddons # provides geo URL handlers
        kiconthemes # provides Qt plugins
        kimageformats # provides Qt plugins
        kio # provides helper service + a bunch of other stuff
        kio-admin # managing files as admin
        kio-extras # stuff for MTP, AFC, etc
        kio-fuse # fuse interface for KIO
        kpackage # provides kpackagetool tool
        kservice # provides kbuildsycoca6 tool
        kwallet # provides helper service
        kwallet-pam # provides helper service
        kwalletmanager # provides KCMs and stuff
        plasma-activities # provides plasma-activities-cli tool
        solid # provides solid-hardware6 tool
        phonon-vlc # provides Phonon plugin

        # Core Plasma parts
        kwin
        kscreen
        libkscreen
        kscreenlocker
        kactivitymanagerd
        kde-cli-tools
        kglobalacceld # keyboard shortcut daemon
        kwrited # wall message proxy, not to be confused with kwrite
        baloo # system indexer
        milou # search engine atop baloo
        kdegraphics-thumbnailers # pdf etc thumbnailer
        polkit-kde-agent-1 # polkit auth ui
        plasma-desktop
        plasma-pa
        plasma-workspace
        drkonqi # crash handler
        kde-inotify-survey # warns the user on low inotifywatch limits

        # Application integration
        libplasma # provides Kirigami platform theme
        plasma-integration # provides Qt platform theme
        kde-gtk-config # syncs KDE settings to GTK

        # Artwork + themes
        breeze
        breeze-icons
        breeze-gtk
        ocean-sound-theme
        plasma-workspace-wallpapers
        qqc2-breeze-style
        qqc2-desktop-style

        # misc Plasma extras
        kdeplasma-addons

        # Plasma utilities
        kmenuedit
        kinfocenter
        plasma-systemmonitor
        ksystemstats
        libksysguard
        systemsettings
        kcmutils
      ]);
    };

    #services = {
    #  dbus.packages = with pkgs; [ accountsservice udisks2 ];
    #  udev.packages = with pkgs; [ udisks2 libmtp.out media-player-info ];
    #};

    #systemd = {
    #  packages = with pkgs; [
    #    accountsservice
    #    udisks2
    #    kdePackages.drkonqi
    #  ];
    #  services = {
    #    accounts-daemon = lib.recursiveUpdate {
    #      wantedBy = [ "graphical.target" ];
    #      # Accounts daemon looks for dbus interfaces in $XDG_DATA_DIRS/accountsservice
    #      environment.XDG_DATA_DIRS = "${config.system.path}/share";
    #    };
    #    services."drkonqi-coredump-processor@".wantedBy = ["systemd-coredump@.service"];
    #  };
    #  tmpfiles.rules = [ "d /var/lib/udisks2 0755 root root -" ];
    #};

    nix = {
      nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];
      registry.nixpkgs.flake = inputs.nixpkgs;
      settings = {
        auto-optimise-store = true;
        experimental-features = [
          "nix-command"
          "flakes"
          "repl-flake"
        ];
      };
    };
  };
}
