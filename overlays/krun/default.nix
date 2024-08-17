final: prev: {
  krun = prev.krun.overrideAttrs (oldAttrs: {
    buildInputs = [
      (final.libkrun.override {
        withGpu = true;
        withSound = true;
        withNet = true;
      })
    ];
  });
}
