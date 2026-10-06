{ src, mkDerivation, base, lib, sqlite-simple, text, unison-core }:
mkDerivation {
  pname = "unison-core-orphans-sqlite";
  version = "0.0.0";
  src = src;
  libraryHaskellDepends = [ base sqlite-simple text unison-core ];
  homepage = "https://github.com/unisonweb/unison#readme";
  license = "unknown";
}
