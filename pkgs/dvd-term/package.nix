{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage {
  pname = "dvd-term";
  version = "0.1.42";

  src = fetchFromGitHub {
    owner = "alefnull";
    repo = "dvd-term";
    rev = "";
    hash = "";
  };

  cargoHash = "";

  meta = {
    description = "A bouncing ASCII art DVD logo (or custom text) for the terminal";
    homepage = "https://github.com/alefnull/dvd-term";
    changelog = "https://github.com/alefnull/dvd-term/blob/main/CHANGELOG.md";
    license = with lib.licenses; [
      mit
      asl20
    ];
    maintainers = with lib.maintainers; [ ravenz46 ];
    mainProgram = "dvd-term";
  };
}
