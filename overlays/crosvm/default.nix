final: prev: {
  crosvm = prev.crosvm.overrideAttrs (oldAttrs: {
    buildFeatures = (oldAttrs.buildFeatures or []) ++ [ "gpu" ];
  });
}
