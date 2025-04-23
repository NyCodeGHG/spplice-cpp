{
  lib,
  stdenv,
  meson,
  libsForQt5,
  duktape,
  curl,
  libarchive,
  pkg-config,
  ninja,
}:

stdenv.mkDerivation {
  pname = "splice-cpp";
  version = "0.9.5";

  src = lib.cleanSource ../.;

  nativeBuildInputs = [
    meson
    libsForQt5.wrapQtAppsHook
    pkg-config
    ninja
  ];

  buildInputs = [
    libsForQt5.qtbase
    duktape
    curl
    libarchive
  ];
}
