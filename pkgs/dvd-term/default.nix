{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "dvd-term";
  version = "0.1.42";

  src = fetchFromGitHub {
    owner = "alefnull";
    repo = "dvd-term";
    rev = "v${version}";
    hash = "sha256-QHiCAP/xFTN23Q9Yohr5uLoGxsR93RVSxAOOTngHlTE=";
  };

  cargoHash = "sha256-CztBaPXpkVqQIuYEpRZNkhWZOGWRDBN74BUqzFcF9jQ=";

  meta = {
    description = "Bouncing ASCII art DVD logo (or custom text) for the terminal";
    homepage = "https://github.com/alefnull/dvd-term";
    changelog = "https://github.com/alefnull/dvd-term/blob/${src.rev}/CHANGELOG.md";
    license = with lib.licenses; [
      asl20
      mit
    ];
    maintainers = with lib.maintainers; [ ravenz46 ];
    mainProgram = "dvd-term";
  };
}
