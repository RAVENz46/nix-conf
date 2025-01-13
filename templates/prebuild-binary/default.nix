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

  meta = {
    description = "";
    homepage = "";
    license = lib.licenses.FIXME;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "";
    platforms = lib.platforms.FIXME;
  };
}
