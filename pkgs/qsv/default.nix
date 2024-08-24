{
  stdenv,
  lib,
  fetchzip,
  autoPatchelfHook,
}:

stdenv.mkDerivation rec {
  pname = "qsv";
  version = "0.132.0";

  src = fetchzip {
    url = "https://github.com/jqnatividad/qsv/releases/download/${version}/qsv-${version}-x86_64-unknown-linux-gnu.zip";
    hash = "sha256-bnCog7ilWO1qrd9hZaz3xShHOuWBfUnBuKbaSNqiB2Y=";
    stripRoot = false;
  };

  nativeBuildInputs = [ autoPatchelfHook ];

  buildInputs = [ stdenv.cc.cc.lib ];

  installPhase = ''
    mkdir -p $out/bin
    cp ${pname} $out/bin
  '';

  meta = {
    homepage = "https://github.com/jqnatividad/qsv";
    description = "CSVs sliced, diced & analyzed.";
    platforms = lib.platforms.linux;
    mainProgram = "qsv";
  };
}
