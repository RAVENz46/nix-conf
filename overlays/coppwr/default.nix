final: prev: {
  coppwr = prev.coppwr.overrideAttrs (oldAttrs: {
    buildNoDefaultFeatures = true;
    buildFeatures = [
      "pw_v0_3_77"
      "xdg_desktop_portals"
      "persistence"
    ];
  });
}
