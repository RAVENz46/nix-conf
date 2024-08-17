final: prev: {
  szyszka = prev.szyszka.overrideAttrs (oldAttrs: rec {
    postInstall = ''
      mkdir -p $out/share/{applications,icons/hicolor/scalable/apps,metainfo}

      install -m 444 \
          -D data/com.github.qarmin.szyszka.desktop \
          -t $out/share/applications
      install -m 444 \
          -D data/com.github.qarmin.szyszka.metainfo.xml \
          -t $out/share/metainfo
      install -m 444 \
          -D data/icons/com.github.qarmin.szyszka.svg \
          -t $out/share/icons/hicolor/scalable/apps
    '';
  });
}
