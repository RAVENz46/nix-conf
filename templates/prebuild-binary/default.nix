{
  stdenv,
  lib,
  fetchzip,
  autoPatchelfHook,
}:

stdenv.mkDerivation rec {
  pname = "";
  version = "";

  src = fetchzip {
    url = "";
    hash = "";
  };

  nativeBuildInputs = [ autoPatchelfHook ];

  buildInputs = [ stdenv.cc.cc.lib ];

  installPhase = ''
    mkdir -p $out/bin
    mv ${pname} $out/bin
  '';

  meta = with lib; {
    description = "";
    homepage = "";
    license = licenses.FIXME;
    maintainers = with maintainers; [ ];
    mainProgram = "";
    platforms = platforms.FIXME;
  };
}
