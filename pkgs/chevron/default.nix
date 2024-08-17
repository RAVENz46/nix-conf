{ lib, stdenvNoCC, fetchzip }:

stdenvNoCC.mkDerivation rec {
  pname = "chevron";
  version = "2.2.0";

  src = fetchzip {
    url = "https://github.com/kholmogorov27/chevron/releases/download/v${version}/Chevron_v${version}.zip";
    hash = "sha256-jGsHZznSeDeWd9YFInAJmWPukf//rvzkjmNsry0zuKM=";
    stripRoot = false;
  };

  installPhase = ''
    mkdir -p $out
    mv * $out
  '';

  meta = {
    description = "Powerful and highly functional startpage integrated with chatGPT and hidden under the super minimalistic and animated design (static/hosted/github pages)";
    homepage = "https://github.com/kholmogorov27/chevron";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ravenz46 ];
    platform = lib.platforms.all;
  };
}
