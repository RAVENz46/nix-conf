{ lib, stdenvNoCC }:

stdenvNoCC.mkDerivation {
  pname = "shinon-cursor";
  version = "0.0.0";

  src = ./.;

  installPhase = ''
    mkdir -p $out/share/icons
    mv shinon $out/share/icons
  '';

  meta = {
    description = "Shinon Cursor";
    homepage = "https://www.pixiv.net/en/artworks/123120697";
    license = lib.licenses.free;
    maintainers = with lib.maintainers; [ ravenz46 ];
    platform = lib.platforms.linux;
  };
}
