{ src, mkDerivation, base, lib, sqlite-simple, uuid }:
mkDerivation {
  pname = "uuid-orphans-sqlite";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base sqlite-simple uuid ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
