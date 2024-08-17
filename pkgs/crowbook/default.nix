{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  oniguruma,
}:

rustPlatform.buildRustPackage rec {
  pname = "crowbook";
  version = "unstable-2024-05-13";

  src = fetchFromGitHub {
    owner = "crowdagger";
    repo = "crowbook";
    rev = "83ab6d56820a31f54da25603cfb70dad9363e852";
    hash = "sha256-GrX3TeSvdf9+EaC1DRpmW26+zNR8QtqTCbL5+JvFlHk=";
  };

  cargoHash = "sha256-VKypvzDzrE4aP0N6dR8WAbmcRsDe1c+BxNordhJQkrI=";

  nativeBuildInputs = [ pkg-config ];

  buildInputs = [ oniguruma ];

  env = {
    RUSTONIG_SYSTEM_LIBONIG = true;
  };

  meta = {
    description = "Converts books written in Markdown to HTML, LaTeX/PDF and EPUB";
    homepage = "https://github.com/crowdagger/crowbook";
    changelog = "https://github.com/crowdagger/crowbook/blob/${src.rev}/ChangeLog.md";
    license = lib.licenses.lgpl21Only;
    maintainers = with lib.maintainers; [ ravenz46 ];
    mainProgram = "crowbook";
  };
}
