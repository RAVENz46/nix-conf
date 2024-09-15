{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  libxkbcommon,
  vulkan-loader,
  stdenv,
  darwin,
  wayland,
  makeDesktopItem,
  copyDesktopItems,
  cargo-about,
  libGL,
}:

rustPlatform.buildRustPackage rec {
  pname = "simp";
  version = "3.7.1";

  src = fetchFromGitHub {
    owner = "Kl4rry";
    repo = "simp";
    rev = "v${version}";
    hash = "sha256-hA/VeMWCNgscUVTEn8TmA8ObFqD90hRn0S8inpgSXqE=";
  };

  cargoHash = "sha256-kPi/KSL+8JG3MgG24JmSlphffKKl9gElucmtBqkX+ys=";

  nativeBuildInputs = [
    pkg-config
    rustPlatform.bindgenHook
    cargo-about
    copyDesktopItems
  ];

  buildInputs =
    [
      libxkbcommon
      vulkan-loader
      libGL
    ]
    ++ lib.optionals stdenv.isDarwin [
      darwin.apple_sdk.frameworks.AppKit
      darwin.apple_sdk.frameworks.CoreGraphics
      darwin.apple_sdk.frameworks.CoreServices
      darwin.apple_sdk.frameworks.Foundation
      darwin.apple_sdk.frameworks.Metal
      darwin.apple_sdk.frameworks.QuartzCore
    ]
    ++ lib.optionals stdenv.isLinux [ wayland ];

  desktopItems = [
    (makeDesktopItem {
      name = "simp";
      desktopName = "simp";
      genericName = "Image Editor";
      exec = "simp %U";
      icon = "icon";
      categories = [ "Graphics" ];
      mimeTypes = [ "image/bmp" ];
    })
  ];

  preBuild = ''
    install -m 444 \
        -D icon.png \
        -t $out/share/icons/hicolor/256x256/apps
    sed -i '35,39c let git_hash=String::from("${version}");' build.rs
  '';

  postFixup = ''
    patchelf $out/bin/${pname} \
      --add-rpath ${
        lib.makeLibraryPath [
          vulkan-loader
          libGL
          libxkbcommon
          wayland
        ]
      }
  '';

  meta = {
    description = "Fast and simple GPU-accelerated image manipulation program";
    homepage = "https://github.com/Kl4rry/simp";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ ravenz46 ];
    mainProgram = "simp";
  };
}
