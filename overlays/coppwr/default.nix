final: prev: {
  coppwr = prev.coppwr.overrideAttrs (oldAttrs: {
    buildFeatures = [
      "pw_v0_3_77"
      "xdg_desktop_portals"
    ];
  });
}
