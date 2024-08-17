{ lib, stdenvNoCC }:

stdenvNoCC.mkDerivation {
  pname = "ayabe-cursor";
  version = "0.0.0";

  src = ./.;

  installPhase = ''
    mkdir -p $out/share/icons
    mv Ayabe $out/share/icons
  '';

  meta = {
    description = "Ayabe Cursor";
    homepage = "https://www.pixiv.net/en/artworks/118686787";
    license = lib.licenses.free;
    maintainers = with lib.maintainers; [ ravenz46 ];
    platform = lib.platforms.linux;
  };
}
