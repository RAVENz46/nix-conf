{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  wrapGAppsHook4,
  cairo,
  gdk-pixbuf,
  glib,
  gtk4,
  libadwaita,
  pango,
}:

rustPlatform.buildRustPackage rec {
  pname = "browdi";
  version = "0.1.1";

  src = fetchFromGitHub {
    owner = "Nosterx";
    repo = "browdi";
    rev = version;
    hash = "sha256-CZ4d55rYtqzhg2dvjFIIerK9C6WHDsG8VfkTL97liCw=";
  };

  cargoHash = "sha256-Bml2jV37kxDmf4pRnGAoB/hWp8wDmfVAtF1tQLK0OpQ=";

  nativeBuildInputs = [
    pkg-config
    wrapGAppsHook4
  ];

  buildInputs = [
    cairo
    gdk-pixbuf
    glib
    gtk4
    libadwaita
    pango
  ];

  postInstall = ''
    install -m 444 \
        -D assets/browdi.desktop \
        -t $out/share/applications
    install -m 444 \
        -D assets/256x256/browdi.png \
        -t $out/share/icons/hicolor/256x256/apps
    install -m 444 \
        -D assets/com.Nosterx.BrowDi.gschema.xml \
        -t $out/share/glib-2.0/schemas
    glib-compile-schemas $out/share/glib-2.0/schemas
  '';

  meta = {
    description = "Browser Chooser/Dispatcher/Selector";
    homepage = "https://github.com/Nosterx/browdi";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ravenz46 ];
    mainProgram = "browdi";
  };
}
