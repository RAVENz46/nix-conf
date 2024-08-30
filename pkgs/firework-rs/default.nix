{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage {
  pname = "firework-rs";
  version = "0.3.1";

  src = fetchFromGitHub {
    owner = "Wayoung7";
    repo = "firework-rs";
    rev = "dc9213df5b7e2f1ac657edc085444f14df0b5509";
    hash = "sha256-K7oQdiq0CnIpWd9AJNX/Pg0IolO2gFSghRNvD8TVGhE=";
  };

  cargoHash = "sha256-uthImhHDslGFxTglu0YwG4WXjM5cpWkgCalR8RSv6no=";

  meta = {
    description = "Cross-platform ascii-art firework simulator in terminal";
    homepage = "https://github.com/Wayoung7/firework-rs";
    changelog = "https://github.com/Wayoung7/firework-rs/blob/master/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ravenz46 ];
    mainProgram = "firework";
  };
}
