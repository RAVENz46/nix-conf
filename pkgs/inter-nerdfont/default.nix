{ lib, stdenvNoCC }:

stdenvNoCC.mkDerivation {
  pname = "inter-nerdfont";
  version = "4.0";

  src = ./.;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/fonts/truetype
    cp InterNerdFont.ttc InterVariableNerdFont-*.ttf $out/share/fonts/truetype

    runHook postInstall
  '';

  meta = with lib; {
    description = "Nerd-patched Inter font";
    license = licenses.ofl;
    platforms = platforms.all;
    maintainers = with maintainers; [ ravenz46 ];
  };
}
