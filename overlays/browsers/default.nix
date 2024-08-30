final: prev: {
  browsers = prev.browsers.overrideAttrs (oldAttrs: {
    patches = [ ./max9.patch ];
  });
}
